import SwiftUI

class MainObservableObject: ObservableObject {
    @Published var list: [MainBean] = []

    func getData() {
        list = MainBean.getData
    }
}
