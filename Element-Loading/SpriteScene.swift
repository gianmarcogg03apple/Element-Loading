// Remember to import the SpriteKit framework
import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        
        var icon = SKSpriteNode()
        let iconAtlas = SKTextureAtlas(named: "Sprites")
        var iconFrames: [SKTexture] = []
        
        let numImages = iconAtlas.textureNames.count - 1
        for i in 0...numImages {
            let iconTextureName = String(i)
            iconFrames.append(iconAtlas.textureNamed(iconTextureName))
            print(i)
          }
        
        let firstFrameTexture = iconFrames[0]
        icon = SKSpriteNode(texture: firstFrameTexture)
        icon.size = CGSize(width: 50, height: 50)
        icon.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(icon)
        
        icon.run(SKAction.repeatForever(
            SKAction.animate(with: iconFrames,
                             timePerFrame: 0.05,
                             resize: false,
                             restore: true)),
            withKey:"iconAnimate")
        
    }
}
