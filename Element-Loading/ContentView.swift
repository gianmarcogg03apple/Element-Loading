import SwiftUI
// 1. Import the SpriteKit framework
import SpriteKit

struct ContentView: View {
    
    // 2. Create a variable that will initialize and host the Game Scene
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: 1000, height: 1000)
        scene.scaleMode = .fill
        scene.backgroundColor = .white
        return scene
    }
    
    var body: some View {
        // 3. Using the SpriteView, show the game scene in your SwiftUI view
        //    You can even use modifiers!
        SpriteView(scene: self.scene)
            .frame(width: 1000, height: 1000)
            .ignoresSafeArea()
    }
}
