//
//  ButtonNode.swift
//  WarFly
//
//  Created by vcslvttv on 24/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SpriteKit

class ButtonNode: SKSpriteNode {
    
    let label: SKLabelNode = {
        let l = SKLabelNode(text: "whatever")
        l.fontColor = UIColor(red: 219 / 255, green: 226 / 255, blue: 215 / 255, alpha: 1.0)
        l.fontName = "AmericanTypewriter-Bold"
        l.fontSize = 30
        l.horizontalAlignmentMode = .center
        l.verticalAlignmentMode = .center
        l.zPosition = 2
        return l
    }()
    
    init(titled title: String, backgroundName: String) {
        let texture = SKTexture(imageNamed: backgroundName)
        super.init(texture: texture, color: .clear, size: texture.size())
        label.text = title.uppercased()
        addChild(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
