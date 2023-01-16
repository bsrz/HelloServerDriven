extension NavigationAction {
    enum DisplayMethod: String, Codable {
        case fullScreen = "full_screen"
        case push
        case sheet
    }
}
