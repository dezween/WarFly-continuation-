//
//  ParentScene.swift
//  WarFly
//
//  Created by vcslvttv on 25/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SpriteKit

class ParentScene: SKScene {
    let sceneManager = SceneManager.shared
    var backScene: SKScene?
    
    func setHeader(withName name: String?, andBackground backgroundName: String) {
        let header = ButtonNode(titled: name, backgroundName: backgroundName)
        header.position = CGPoint(x: self.frame.midX, y: self.frame.midY + 150)
        self.addChild(header)
    }
}
