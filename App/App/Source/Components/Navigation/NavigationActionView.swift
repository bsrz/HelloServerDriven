import Dependencies
import SwiftUI

struct NavigationActionView<Content: View>: View {

    @Dependency(\.router) private var router

    @State private var isActive = false

    private let action: NavigationAction
    private let content: (Binding<Bool>) -> Content

    init(action: NavigationAction, @ViewBuilder content: @escaping (Binding<Bool>) -> Content) {
        self.action = action
        self.content = content
    }

    var body: some View {
        let destination = router.view(for: action.route)

        switch action.displayMethod {
        case .sheet:
            SheetView(present: destination) {
                content(.constant(false))
            }

        case .fullScreen:
            let viewModel = FullScreenViewModel()
            FullScreenView(
                viewModel: viewModel,
                destination: {
                    destination
                        .onTapGesture { viewModel.dismiss() }
                },
                content: { content(.constant(false)) }
            )

        case .push:
            NavigationLink {
                destination
            } label: {
                content(.constant(false))
            }

        default:
            ZStack {
                NavigationLink(destination: destination, isActive: $isActive, label: { EmptyView() })
                    .hidden()

                content($isActive)
            }
        }
    }
}

struct NavigationActionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationActionView(action: .init(displayMethod: .sheet, route: .details("42"))) { _ in
            Text("go to foo")
        }
    }
}
