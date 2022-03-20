import SwiftUI

struct MainView: View {
    @StateObject private var object = MainObservableObject()

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image("icon_top")
                .resizable()
                .scaledToFit()
                .edgesIgnoringSafeArea(.all)
            if object.list.isEmpty {
                Spacer()
                ProgressView()
                Spacer()
            } else {
                ScrollView {
                    LazyVGrid(columns: [
                        GridItem(.flexible(minimum: 110), spacing: 0)
                    ], spacing: 0) {
                        ForEach(object.list, id: \.id) { bean in
                            MainItemView(
                                bean: bean
                            )
                        }
                    }
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: .topLeading
                    )
                }
            }
            Image("icon_bottom")
                .resizable()
                .scaledToFit().background(Color.blue.edgesIgnoringSafeArea(.bottom))
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                object.getData()
            }
        }
    }
}
