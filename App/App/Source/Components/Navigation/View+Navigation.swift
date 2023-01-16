import SwiftUI

extension View {

    /// Performs a navigation action, navigating to the destination view when the content is tapped
    /// - Parameters:
    ///   - action: The action to perform (e.g. full screen, push, sheet)
    ///   - router: The router used to determine the destination
    ///   - conent: The content to tap on to trigger the action
    /// - Returns: The destination view
    func perform(action: NavigationAction, router: Router, @ViewBuilder _ content: @escaping () -> any View) -> AnyView {
        let destination = AnyView(router.view(for: action.route))

        switch action.displayMethod {
        case .sheet:
            return .init(
                SheetView(present: destination) {
                    AnyView(content())
                }
            )

        case .fullScreen:
            let viewModel = FullScreenViewModel()
            return .init(
                FullScreenView(
                    viewModel: viewModel,
                    present: destination
                        .onTapGesture {
                            viewModel.dismiss()
                        }
                ) {
                    AnyView(content())
                }
            )

        case .push:
            return .init(
                NavigationLink {
                    AnyView(destination)
                } label: {
                    AnyView(content())
                }
            )
        }
    }
}
