import SwiftUI
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(named soundName: String) {
    if let path = Bundle.main.path(forResource: soundName, ofType: "mp3") {
        let url = URL(fileURLWithPath: path)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print("Error al reproducir el sonido: \(error.localizedDescription)")
        }
    } else {
        print("No se encontró el archivo de sonido \(soundName).mp3")
    }
}
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("Cinee")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .padding(.bottom, -200)
                    .offset(y: -120)

                HStack(spacing: 10) {
                    NavigationLink(destination: bebidasview()) {
                        Image("bebidas2")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(width: 200, height: 200)
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                        playSound(named: "sonido")
                    })
                    NavigationLink(destination: AlimentosView()) {
                        Image("alimentos")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(width: 200, height: 200)
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                        playSound(named: "sonido")
                    })
                }
                .padding(.horizontal, 5)
                HStack(spacing: 10) {
                    NavigationLink(destination: SnacksView()) {
                        Image("snacks")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(width: 200, height: 200)
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                        playSound(named: "sonido")
                    })
                    NavigationLink(destination: PostresView()) {
                        Image("postres")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .frame(width: 200, height: 200)
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                        playSound(named: "sonido")
                    })
                }
                .padding(.horizontal, 5)
            }
        }
    }
}

#Preview {
    ContentView()
}
