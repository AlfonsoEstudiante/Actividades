import SwiftUI

struct AlimentosView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Alimentos")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    VStack(spacing: 10) {
                        Image("boneless")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(width: 200, height: 200)
                        
                        Text("Boneless")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text("$75.00")
                            .font(.subheadline)
                            .foregroundColor(.green)
                    }
                    
                    VStack {
                        Image("sanwish")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(width: 200, height: 200)
                        
                        Text("sandwich")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text("$75.00")
                            .font(.subheadline)
                            .foregroundColor(.green)
                    }
                    VStack {
                        Image("sanwish")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(width: 200, height: 200)
                        
                        Text("Refresco")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text("$75.00")
                            .font(.subheadline)
                            .foregroundColor(.green)
                    }
                }
            }
        }
        .padding(.horizontal, 10)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}


#Preview {
    AlimentosView()
}
