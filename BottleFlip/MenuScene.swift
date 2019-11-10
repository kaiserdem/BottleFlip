//
//  MenuScene.swift
//  BottleFlip
//
//  Created by Kaiserdem on 10.11.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {
  
  var playButtonNode = SKSpriteNode()
  var tableNode = SKSpriteNode()
  var bottleNode = SKSpriteNode()
  var leftButtonNode = SKSpriteNode()
  var rightButtonNode = SKSpriteNode()
  var highScore = 0
  var totalFlips = 0
  

  // когада сцена отобразилась
  override func didMove(to view: SKView) {
    
    self.backgroundColor = #colorLiteral(red: 0.6588235294, green: 0.6980392157, blue: 0.7254901961, alpha: 1)
    
    setupUI()
  }
  
  func setupUI() {
    
    // Logo Node
    let logo = ButtonNode(imageNoge: "logo", position: CGPoint(x: self.frame.midX, y: self.frame.maxY - 75), xScale: 1, yScale: 1)
    self.addChild(logo)
    

    // Best Score Label
    let bestScoreLabelNode = LabelNode(text: "Лучший результат", fontSize: 17, position: CGPoint(x: self.frame.midX - 100, y: self.frame.maxY - 165), fontColor: #colorLiteral(red: 0.7568627451, green: 0.3450980392, blue: 0.3450980392, alpha: 1))
    self.addChild(bestScoreLabelNode)
    
    
    // High Score Label
    let highScoreLabelNode = LabelNode(text: String(highScore), fontSize: 70, position: CGPoint(x: self.frame.midX - 100, y: self.frame.maxY - 235), fontColor: #colorLiteral(red: 0.7568627451, green: 0.3450980392, blue: 0.3450980392, alpha: 1))
    self.addChild(highScoreLabelNode)
    
    
    // Total Flips Label
    let totalFlipsLabelNode = LabelNode(text: "Количество сальт", fontSize: 17, position: CGPoint(x: self.frame.midX + 100, y: self.frame.maxY - 165), fontColor: #colorLiteral(red: 0.1411764706, green: 0.231372549, blue: 0.6666666667, alpha: 1))
    self.addChild(totalFlipsLabelNode)
    
    
    // Total Flips Score Label
    let flipsLabelNode = LabelNode(text: String(totalFlips), fontSize: 70, position: CGPoint(x: self.frame.midX + 100, y: self.frame.maxY - 235), fontColor: #colorLiteral(red: 0.1411764706, green: 0.231372549, blue: 0.6666666667, alpha: 1))
    self.addChild(flipsLabelNode)
    
    
    // Play Button
    playButtonNode = ButtonNode(imageNoge: "play_button", position: CGPoint(x: self.frame.midX, y: self.frame.midY - 15), xScale: 0.9, yScale: 0.9)
    self.addChild(playButtonNode)
    
    
    // Table Node
    tableNode = ButtonNode(imageNoge: "table", position: CGPoint(x: self.frame.midX, y: self.frame.minY + 65), xScale: 0.85, yScale: 0.85)
    tableNode.zPosition = 3
    self.addChild(tableNode)
    
    
    // Bottle Node
    bottleNode = SKSpriteNode(imageNamed: "bottle")
    bottleNode.zPosition = 10
    self.addChild(bottleNode)
    
    
    // Left Button Node
    leftButtonNode = ButtonNode(imageNoge: "left_button", position: CGPoint(x: self.frame.midX + leftButtonNode.size.width - 130, y: self.frame.minY - leftButtonNode.size.height + 145), xScale: 0.8, yScale: 0.8)
    self.changeButton(leftButtonNode, state: false)
    self.addChild(leftButtonNode)
    
    // Right Button Node
    rightButtonNode = ButtonNode(imageNoge: "right_button", position: CGPoint(x: self.frame.midX + rightButtonNode.size.width + 130, y: self.frame.minY - rightButtonNode.size.height + 145), xScale: 1, yScale: 1)
    self.changeButton(rightButtonNode, state: true)
    self.addChild(rightButtonNode)
  }
  
  func changeButton(_ buttonNode: SKSpriteNode, state: Bool) {
    // Change arrow sprites
    var buttonColor = #colorLiteral(red: 0.3411764706, green: 0.3529411765, blue: 0.4431372549, alpha: 0.2)
    
    if state {
      buttonColor = #colorLiteral(red: 0.3411764706, green: 0.3529411765, blue: 0.4431372549, alpha: 1)
    }
    buttonNode.color = buttonColor
    buttonNode.colorBlendFactor = 1
  }
  
}
