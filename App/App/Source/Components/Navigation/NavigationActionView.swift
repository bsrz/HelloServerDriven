import Dependencies
import SwiftUI

struct NavigationActionView<Content: View>: View {

    @Dependency(\.router) private var router

    private let action: NavigationAction
    private let content: () -> Content

    init(action: NavigationAction, @ViewBuilder content: @escaping () -> Content) {
        self.action = action
        self.content = content
    }

    var body: some View {
        let destination = router.view(for: action.route)

        switch action.displayMethod {
        case .sheet:
            SheetView(present: destination) {
                content()
            }

        case .fullScreen:
            let viewModel = FullScreenViewModel()
            FullScreenView(
                viewModel: viewModel,
                destination: {
                    destination
                        .onTapGesture { viewModel.dismiss() }
                },
                content: { content() }
            )

        case .push:
            NavigationLink {
                destination
            } label: {
                content()
            }
        }
    }
}

struct NavigationActionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationActionView(action: .init(displayMethod: .sheet, route: .int(42))) {
            Text("go to foo")
        }
    }
}
