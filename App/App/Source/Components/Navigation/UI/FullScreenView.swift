import SwiftUI

class FullScreenViewModel: ObservableObject {

    @Published private(set) var isPresented = false

    func present() { isPresented = true }
    func dismiss() { isPresented = false }
}

struct FullScreenView<Content: View, Destination: View>: View {

    @ObservedObject var viewModel: FullScreenViewModel

    let content: () -> Content
    let destination: () -> Destination

    init(
        viewModel: FullScreenViewModel,
        @ViewBuilder destination: @escaping () -> Destination,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.viewModel = viewModel
        self.destination = destination
        self.content = content
    }

    var body: some View {
        content()
            .onTapGesture { viewModel.present() }
            .fullScreenCover(
                isPresented: .init(
                    get: { viewModel.isPresented },
                    set: { bool in
                        guard !bool else { return }
                        viewModel.dismiss()
                    }
                ),
                content: { destination() }
            )
    }
}

struct FullScreenView_Previews: PreviewProvider {
    static var viewModel: FullScreenViewModel = .init()
    static var previews: some View {
        FullScreenView(
            viewModel: viewModel,
            destination: {
                Text("Presented")
                    .onTapGesture { viewModel.dismiss() }
            },
            content: {
                Text("Launch")
            }
        )
    }
}
