import Kingfisher
import SwiftUI

struct POIListView: View {

    @StateObject private var viewModel: POIListViewModel = .init()

    var body: some View {
        List(viewModel.state.pointsOfInterests) { poi in
            NavigationActionView(action: poi.action) {
                VStack(alignment: .leading) {
                    KFImage(poi.imageUrl)
                    Text(poi.title)
                        .font(.largeTitle)
                    Text(poi.description)
                        .font(.body)
                }
            }
        }
        .navigationTitle(viewModel.state.title)
        .onAppear { viewModel.send(.onAppear) }
    }
}

struct POIListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView  {
            POIListView()
        }
    }
}
