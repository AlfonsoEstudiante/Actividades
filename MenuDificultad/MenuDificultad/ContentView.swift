//
//  ContentView.swift
//  MenuDificultad
//
//  Created by win603 on 10/09/25.
//

import SwiftUI

struct Dificultad: Identifiable, Equatable {
    let id = UUID()
    let nombre: String
    let imagen: String
}

struct ContentView: View {
    let dificultades: [Dificultad] = [
        Dificultad(nombre: "Fácil (Primermundista)", imagen: "eu"),
        Dificultad(nombre: "Normal (Segunmundista)", imagen: "Mexico"),
        Dificultad(nombre: "Difícil (Tercermundista)", imagen: "africa")
    ]
    
    @State private var seleccionada: Dificultad? = nil
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Elije tu Spawn-Point")
                .font(.title)
                .bold()
            
            ForEach(dificultades) { dificultad in
                Button(action: {
                    withAnimation {
                        seleccionada = dificultad
                    }
                }) {
                    ZStack {
                        if seleccionada == dificultad {
                            // Imagen de fondo que cubre toda la caja
                            Image(dificultad.imagen)
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .clipped()
                        }
                        
                        HStack {
                            Text(dificultad.nombre)
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundColor(seleccionada == dificultad ? .white : .primary)
                                .padding()
                            
                            Spacer()
                            
                            Image(dificultad.imagen)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding()
                        }
                    }
                }
                .frame(height: 120)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(radius: 5)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(seleccionada == dificultad ? Color.red : Color.clear, lineWidth: 3)
                )
            }
            
            Spacer()
        }
        .padding()
        .background(Color(.systemGray6))
    }
}

#Preview {
    ContentView()
}
