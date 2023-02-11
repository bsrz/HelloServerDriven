import Kingfisher
import SwiftUI

struct OfficeListView: View {

    @StateObject private var viewModel: OfficeListViewModel = .init()

    var body: some View {
        ZStack {
            VStack {
                Text(viewModel.state.title)
                    .font(.title2)
                    .padding()

                List(viewModel.state.offices) { office in
                    NavigationActionView(action: office.action) { isActive in
                        VStack(alignment: .leading) {
                            KFImage(office.imageUrl)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("\(office.name) (\(office.id))")
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)

                            Text("\(office.location.city), \(office.location.state)")
                            Text(office.location.country)
                        }
                        .background(Color.clear)
                        .onTapGesture {
                            viewModel.send(.tap(isActive))
                        }
                    }
                }
            }
            .navigationTitle("TripAdvisor Offices")
            .onAppear { viewModel.send(.onAppear) }

            if viewModel.state.isLoading {
                Color.black.opacity(0.25)
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: Color.white))
            }
        }
    }
}

struct OfficeListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView  {
            OfficeListView()
        }
    }
}
