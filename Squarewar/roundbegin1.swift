//
//  roundbegin1.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 13.1.2022.
//

import Foundation
import Foundation
import UIKit
import SpriteKit
import GameplayKit

class roundbegin1: SKScene {
    
    override func didMove(to view: SKView) {
        
        let tausta = SKSpriteNode(imageNamed: "menu")
        tausta.size = self.size
        tausta.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        tausta.zPosition = 0
        self.addChild(tausta)
        
      
        let numero1u = SKLabelNode(fontNamed: "Chalkduster")
        
        numero1u.text = "1"
        numero1u.fontColor = .white
        numero1u.position = CGPoint(x: self.size.width/2, y: self.size.height*0.875)
        numero1u.fontSize = self.size.width/6
        numero1u.zRotation = 3.14159265
        numero1u.zPosition = 1
           addChild(numero1u)
        
        
        let numero1 = SKLabelNode(fontNamed: "Chalkduster")
        
          numero1.text = "1"
        numero1.fontColor = .white
        numero1.position = CGPoint(x: self.size.width/2, y: self.size.height/8)
        numero1.fontSize = self.size.width/6
           
        numero1.zPosition = 1
           addChild(numero1)
        
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
            let newScene = goscene(size: CGSize(width: 1536, height: 2048))
            
            scene?.view!.presentScene(newScene,
                                            transition: reveal)
        
    
    }
        
    }}
