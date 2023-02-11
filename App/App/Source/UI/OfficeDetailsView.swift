import Kingfisher
import SwiftUI

struct OfficeDetailsView: View {

    @ObservedObject var viewModel: OfficeDetailsViewModel

    var body: some View {
        VStack(alignment: .leading) {
            KFImage(viewModel.state.details.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, alignment: .leading)

            Text(viewModel.state.details.description)
                .font(.title2)
                .padding()

            Spacer()
        }
        .navigationTitle(viewModel.state.details.name)
    }
}

struct OfficeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            OfficeDetailsView(
                viewModel: .init(
                    details: .init(
                        id: "id",
                        name: "Name",
                        description: "Description",
                        imageUrl: URL(string: "https://picsum.photos/seed/Gatineau/300/200")!,
                        location: .init(
                            city: "Gatineau",
                            state: "Quebec",
                            country: "Canada"
                        ),
                        gallery: .init(
                            section1: [],
                            section2: [],
                            section3: []
                        )
                    )
                )
            )
        }
    }
}
