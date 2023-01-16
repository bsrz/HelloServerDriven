import SwiftUI

struct SheetView<Content: View, Destination: View>: View {

    @State private var isPresented: Bool = false

    let content: () -> Content
    let destination: Destination

    init(present destination: Destination, using content: @escaping () -> Content) {
        self.content = content
        self.destination = destination
    }

    var body: some View {
        content()
            .onTapGesture { isPresented = true }
            .sheet(isPresented: $isPresented) { destination }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(present: Text("Presented")) {
            Text("Launch")
        }
    }
}
