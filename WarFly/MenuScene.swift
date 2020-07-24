//
//  MenuScene.swift
//  WarFly
//
//  Created by vcslvttv on 19/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SpriteKit

class MenuScene: ParentScene {
    override func didMove(to view: SKView) {
        if !Assets.shared.isLoaded {
            Assets.shared.preloadAssets()
            Assets.shared.isLoaded = true
        }
        
        self.backgroundColor = SKColor(red: 0.15, green: 0.15, blue: 0.3, alpha: 1.0)
        setHeader(withName: nil, andBackground: "header1")
        
        let titles = ["play", "options", "best"]
        for (index, title) in titles.enumerated() {
            let button = ButtonNode(titled: title, backgroundName: "button_background")
            button.position = CGPoint(x: self.frame.midX, y: self.frame.midY - CGFloat(100 * index))
            button.name = title
            button.label.name = title
            addChild(button)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let location = touches.first!.location(in: self)
        let node = self.atPoint(location)
        
        if node.name == "play" {
            let transition = SKTransition.crossFade(withDuration: 1.0)
            let gameScene = GameScene(size: self.size)
            gameScene.scaleMode = .aspectFill
            self.scene!.view?.presentScene(gameScene, transition: transition)
            
        } else if node.name == "options" {
            let transition = SKTransition.crossFade(withDuration: 1.0)
            let optionScene = OptionsScene(size: self.size)
            optionScene.backScene = self
            optionScene.scaleMode = .aspectFill
            self.scene!.view?.presentScene(optionScene, transition: transition)
            
        } else if node.name == "best" {
            
//            let transition = SKTransition.crossFade(withDuration: 1.0)
//            let bestScene = OptionsScene(size: self.size)
//            optionScene.backScene = self
//            optionScene.scaleMode = .aspectFill
//            self.scene!.view?.presentScene(optionScene, transition: transition)
            
        }
    }
}
