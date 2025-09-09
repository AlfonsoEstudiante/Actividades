//
//  ContentView.swift
//  Peliculas
//
//  Created by win603 on 01/09/25.
//

import SwiftUI

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let duration: String
    let image: String // nombre en Assets.xcassets
    let tag: String
    let tagColor: Color
    let rating: String
    let ratingColor: Color
}

struct ContentView: View {
    
    let movies: [Movie] = [
        Movie(title: "Lara Croft",
              duration: "100 min",
              image: "LaraCroft", // agrega esta imagen en Assets
              tag: "Preventa",
              tagColor: .gray,
              rating: "B",
              ratingColor: .yellow),
        
        Movie(title: "Tron: Legacy",
              duration: "125 min",
              image: "Tron", // agrega esta imagen en Assets
              tag: "Estreno",
              tagColor: .blue,
              rating: "TBC",
              ratingColor: .gray),
        
        Movie(title: "The Truman Show",
              duration: "103 min",
              image: "Truman", // agrega esta imagen en Assets
              tag: "Próximamente",
              tagColor: .orange,
              rating: "A",
              ratingColor: .green)
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(spacing: 16) {
                ForEach(movies) { movie in
                    MovieCard(movie: movie)
                        .frame(width: 200)
                }
            }
            .padding()
        }
    }
}

struct MovieCard: View {
    let movie: Movie
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack(alignment: .bottomTrailing) {
                Image(movie.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 280)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .shadow(radius: 4)
                
                Text(movie.tag)
                    .font(.caption)
                    .bold()
                    .padding(6)
                    .background(movie.tagColor)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .padding(8)
            }
            
            HStack{
                Text(movie.rating)
                    .fontWeight(.heavy)
                    .padding(3)
                    .background(movie.ratingColor)
                    .cornerRadius(5)
                
                Text(movie.title)
                    .font(.headline)
                    .lineLimit(2)
            }
            
            Text(movie.duration)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack{
                Button("Ver detalle") {
                    // acción aquí
                }
                .font(.footnote)
                .foregroundColor(.blue)
                
                
                Image(systemName: "info.circle").foregroundColor(.blue)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ContentView()
}
