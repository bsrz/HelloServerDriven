import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            NavigationView {
                POIListView()
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
