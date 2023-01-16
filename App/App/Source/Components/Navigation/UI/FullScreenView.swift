import SwiftUI

class FullScreenViewModel: ObservableObject {

    @Published private(set) var isPresented = false

    func present() { isPresented = true }
    func dismiss() { isPresented = false }
}

struct FullScreenView<Content: View, Destination: View>: View {

    @ObservedObject var viewModel: FullScreenViewModel

    let content: () -> Content
    let destination: Destination

    init(viewModel: FullScreenViewModel, present destination: Destination, using content: @escaping () -> Content) {
        self.viewModel = viewModel
        self.content = content
        self.destination = destination
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
                content: { destination }
            )
    }
}

struct FullScreenView_Previews: PreviewProvider {
    static var viewModel: FullScreenViewModel = .init()
    static var previews: some View {
        FullScreenView(
            viewModel: viewModel,
            present: Text("Presented")
                .onTapGesture { viewModel.dismiss() }
        ) {
            Text("Launch")
        }
    }
}
