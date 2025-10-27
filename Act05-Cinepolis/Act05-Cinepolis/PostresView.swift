//
//  PostresView.swift
//  Act05-Cinepolis
//
//  Created by Alfonso Madero on 27/10/25.
//

import SwiftUI

struct PostresView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Postres")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            HStack{
                VStack(spacing: 10) {
                    Image("dulce")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .frame(width: 200, height: 200)
                    
                    Text("Frappe")
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
                    
                    Text("Nachos")
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
    PostresView()
}
