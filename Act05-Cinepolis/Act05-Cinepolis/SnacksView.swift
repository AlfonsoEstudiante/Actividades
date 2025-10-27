import SwiftUI

struct SnacksView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Snacks")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            HStack{
                VStack(spacing: 10) {
                    Image("palomas")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .frame(width: 200, height: 200)
                    
                    Text("Palomitas")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("$75.00")
                        .font(.subheadline)
                        .foregroundColor(.green)
                }
                
                VStack {
                    Image("nachos")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .frame(width: 200, height: 200)
                    
                    Text("Combo Nachos")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("$75.00")
                        .font(.subheadline)
                        .foregroundColor(.green)
                }
            }
            
            
        }
        .padding(.horizontal, 10)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    //.frame(maxHeight: .infinity, alignment: .top)
    
}


#Preview {
    SnacksView()
}
