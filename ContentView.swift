import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("🎬 Regarder Film 1", destination: VideoPlayerView(urlString: "https://vimeo.com/1078364541"))
                NavigationLink("🎬 Regarder Film 2", destination: VideoPlayerView(urlString: "https://vimeo.com/1078112953"))
            }
            .navigationTitle("Boss Production")
        }
    }
}

struct VideoPlayerView: View {
    let urlString: String
    var body: some View {
        if let url = URL(string: urlString) {
            VideoPlayer(player: AVPlayer(url: url))
                .onAppear {
                    AVPlayer(url: url).play()
                }
        } else {
            Text("Lien vidéo invalide")
        }
    }
}
