//
//  ButtonNode.swift
//  BottleFlip
//
//  Created by Kaiserdem on 10.11.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import SpriteKit

class ButtonNode: SKSpriteNode {
  
  var originalScale: CGFloat = 0

  init(imageNoge: String, position: CGPoint, xScale: CGFloat, yScale: CGFloat) {
    
    let texture = SKTexture(imageNamed: imageNoge)
    super.init(texture: texture, color: UIColor.clear, size: texture.size() )
    
    self.position = position
    self.xScale = xScale
    self.yScale = yScale
    self.originalScale = xScale
    
    buttonAnimation()
  }
  func buttonAnimation() {
    let scaleDownAction = SKAction.scale(to: 0, duration: 0)
    let scaleUpAction = SKAction.scale(to: originalScale, duration: 2.0)
    let seq = SKAction.sequence([scaleDownAction, scaleUpAction])
    
    self.run(seq)
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
