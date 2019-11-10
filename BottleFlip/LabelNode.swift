//
//  LabelNode.swift
//  BottleFlip
//
//  Created by Kaiserdem on 10.11.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import SpriteKit

class LabelNode: SKLabelNode {

  convenience init(text: String, fontSize: CGFloat, position: CGPoint, fontColor: UIColor) {
    self.init(fontNamed: UI_FONT)
    self.text = text
    self.fontSize = fontSize
    self.position = position
    self.fontColor = fontColor
  }
}
