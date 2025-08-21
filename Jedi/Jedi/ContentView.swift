//
//  ContentView.swift
//  Jedi
//
//  Created by win603 on 18/08/25.
//

import SwiftUI

struct ContentView: View {
    let saludo: String = String(localized: "hello")
    let nombre: String = String(localized: "name")
    let edad: String = String(localized: "age")
    
    var body: some View {
        VStack {
            Image(systemName: "globe").imageScale(.large).foregroundStyle(.tint)
            Text("Probnando \(saludo) \(nombre) \(edad).")
        }.padding()
    }
}

#Preview {
    ContentView()
}

