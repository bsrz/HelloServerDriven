import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            NavigationView {
                OfficeListView()
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
