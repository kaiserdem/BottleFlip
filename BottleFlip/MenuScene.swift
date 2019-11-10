//
//  MenuScene.swift
//  BottleFlip
//
//  Created by Kaiserdem on 10.11.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {

  // когада сцена отобразилась
  override func didMove(to view: SKView) {
    
    self.backgroundColor = #colorLiteral(red: 0.6588235294, green: 0.6980392157, blue: 0.7254901961, alpha: 1)
    
    setupUI()
  }
  
  func setupUI() {
    // logo node
    let logo = ButtonNode(imageNoge: "logo", position: CGPoint(x: self.frame.midX, y: self.frame.maxY - 75), xScale: 1, yScale: 1)
    self.addChild(logo)
  }
}
