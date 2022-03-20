import SwiftUI

struct MainItemView: View {
    let bean: MainBean

    var body: some View {
        HStack(spacing: 0) {
            AsyncImage(url: URL(string: bean.imageUrl)) { image in
                image
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                    .padding(0)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                    .padding(0)
            }
            Spacer().background(Color.red).frame(width: 8)
            VStack(spacing: 0) {
                Spacer()
                Text(String(bean.title))
                    .foregroundColor(Color.white)
                    .font(.system(size: 18, weight: .heavy, design: .default))
                Spacer().frame(height: 8)
                Text(bean.content)
                    .foregroundColor(Color.white)
                    .lineLimit(2)
                Spacer()
            }.background(Color.red).frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .trailing
            )
            Spacer().frame(width: 16)
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .trailing
        )
        .background(Color.red)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(EdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 16))
    }
}
