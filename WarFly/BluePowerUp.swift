//
//  BluePowerUp.swift
//  WarFly
//
//  Created by vcslvttv on 19/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SpriteKit

class BluePowerUp: PowerUp {
    
    init() {
        let textureAtlas = Assets.shared.bluePowerUpAtlas
        super.init(textureAtlas: textureAtlas)
        name = "bluePowerUp"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
