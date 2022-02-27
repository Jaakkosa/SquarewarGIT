//
//  roundbegin2.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 13.1.2022.
//

import Foundation
import Foundation
import UIKit
import SpriteKit
import GameplayKit

class roundbegin2: SKScene {
    
    override func didMove(to view: SKView) {
        
        let tausta = SKSpriteNode(imageNamed: "menu")
        tausta.size = self.size
        tausta.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        tausta.zPosition = 0
        self.addChild(tausta)
        
      
        let numero2u = SKLabelNode(fontNamed: "Chalkduster")
        
          numero2u.text = "2"
        numero2u.fontColor = .white
        numero2u.position = CGPoint(x: self.size.width/2, y: self.size.height*0.875)
        numero2u.fontSize = self.size.width/6
        numero2u.zRotation = 3.14159265
        numero2u.zPosition = 1
           addChild(numero2u)
        
        
        let numero2 = SKLabelNode(fontNamed: "Chalkduster")
        
          numero2.text = "2"
        numero2.fontColor = .white
        numero2.position = CGPoint(x: self.size.width/2, y: self.size.height/8)
        numero2.fontSize = self.size.width/6
           
        numero2.zPosition = 1
           addChild(numero2)
        
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
            let newScene = roundbegin1(size: CGSize(width: 1536, height: 2048))
            
            scene?.view!.presentScene(newScene,
                                            transition: reveal)
        
    
    }
        
}
}
