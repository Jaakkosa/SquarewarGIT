//
//  ROUNDBEGIN3.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 13.1.2022.
//

import Foundation
import Foundation
import UIKit
import SpriteKit
import GameplayKit

class roundbegin3: SKScene {
    
    override func didMove(to view: SKView) {
        
        let tausta = SKSpriteNode(imageNamed: "menu")
        tausta.size = self.size
        tausta.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        tausta.zPosition = 0
        self.addChild(tausta)
        
        let numero3u = SKLabelNode(fontNamed: "Chalkduster")
        
          numero3u.text = "3"
        numero3u.fontColor = .white
        numero3u.position = CGPoint(x: self.size.width/2, y: self.size.height*0.875)
        numero3u.fontSize = self.size.width/6
        numero3u.zRotation = 3.14159265
        numero3u.zPosition = 1
           addChild(numero3u)
        
        
        let numero3 = SKLabelNode(fontNamed: "Chalkduster")
        
          numero3.text = "3"
        numero3.fontColor = .white
        numero3.position = CGPoint(x: self.size.width/2, y: self.size.height/8)
        numero3.fontSize = self.size.width/6
           
        numero3.zPosition = 1
           addChild(numero3)
        
        let nimi = SKLabelNode(fontNamed: "Chalkduster")
           nimi.text = "_____________________________________________________"
           nimi.fontColor = .black
           nimi.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
           nimi.fontSize = self.size.width/20
           nimi.isUserInteractionEnabled = true
           
           nimi.zPosition = 1
           addChild(nimi)
    
        
      
        var runCount = 0

        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            print("aika")
            runCount += 1

            if runCount == 2 {
                timer.invalidate()
                getscene()
            }
        }
        
     
        
        func getscene() {
         
            let reveal = SKTransition.crossFade(withDuration: 1)
         
            let newScene = roundbegin2(size: CGSize(width: 1536, height: 2048))
            
            scene?.view!.presentScene(newScene,
                                            transition: reveal)
        
    
    }
    
}
}
