//
//  goscene.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 13.1.2022.
//

import Foundation
import Foundation
import UIKit
import SpriteKit
import GameplayKit

class goscene: SKScene {
    
    override func didMove(to view: SKView) {
        
        
        
        let tausta = SKSpriteNode(imageNamed: "menu")
        tausta.size = self.size
        tausta.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        tausta.zPosition = 0
        self.addChild(tausta)
        
        let nimi = SKLabelNode(fontNamed: "Chalkduster")
           nimi.text = "_____________________________________________________"
           nimi.fontColor = .black
           nimi.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
           nimi.fontSize = self.size.width/20
           nimi.isUserInteractionEnabled = true
           
           nimi.zPosition = 1
           addChild(nimi)
        
        
        let go = SKLabelNode(fontNamed: "Chalkduster")
        
        go.text = "GO"
        go.fontColor = .white
        go.position = CGPoint(x: self.size.width/2, y: self.size.height/8)
        go.fontSize = self.size.width/2
           
        go.zPosition = 1
           addChild(go)
        
        let go2 = SKLabelNode(fontNamed: "Chalkduster")
        
        go2.text = "GO"
        go2.fontColor = .white
        go2.position = CGPoint(x: self.size.width/2, y: self.size.height*0.875)
        go2.fontSize = self.size.width/2
        go2.zRotation = 3.14159265
        go2.zPosition = 1
           addChild(go2)
    
        
      
        var runCount = 0
        let randommi = Int.random(in: 3..<8)
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            print("aika")
            runCount += 1

            if runCount == randommi {
                timer.invalidate()
                getroundscene()
            }
        }
        
        func getroundscene() {
         
            
            let newScene = NewGameScene(size: CGSize(width: 1536, height: 2048))
            
            scene?.view!.presentScene(newScene)


        }
        
       
    
}
}


