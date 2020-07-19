//
//  YellowShot.swift
//  WarFly
//
//  Created by vcslvttv on 19/07/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import SpriteKit

class YellowShot: Shot {
    
    init() {
        let textureAtlas = Assets.shared.yellowShotAtlas
        super.init(textureAtlas: textureAtlas)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
