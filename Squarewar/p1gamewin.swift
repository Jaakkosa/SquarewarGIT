//
//  p1gamewin.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 14.1.2022.
//

import Foundation
import Foundation
import UIKit
import SpriteKit
import GameplayKit

class p1gamewin: SKScene {
    
    
    override func didMove(to view: SKView) {
        let tausta = SKSpriteNode(imageNamed: "menu")
        tausta.size = self.size
        tausta.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        tausta.zPosition = 0
        tausta.name = "tausta"
        self.addChild(tausta)

        
    
        let p1wins = SKLabelNode(fontNamed: "Chalkduster")
        
        p1wins.text = "VICTORY"
        p1wins.fontColor = .white
        p1wins.position = CGPoint(x: self.size.width/2, y: self.size.height*0.75)
        p1wins.fontSize = self.size.width/5.5
        p1wins.zRotation = 3.14159265
        p1wins.zPosition = 1
           addChild(p1wins)
        
        let nimi = SKLabelNode(fontNamed: "Chalkduster")
           nimi.text = "_____________________________________________________"
           nimi.fontColor = .black
           nimi.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
           nimi.fontSize = self.size.width/20
           nimi.isUserInteractionEnabled = true
           
           nimi.zPosition = 1
           addChild(nimi)
        
        let p1winsu = SKLabelNode(fontNamed: "Chalkduster")
        
        p1winsu.text = "DEFEAT"
        p1winsu.fontColor = .white
        p1winsu.position = CGPoint(x: self.size.width/2, y: self.size.height/4)
        p1winsu.fontSize = self.size.width/5.5
        p1winsu.zPosition = 1
           addChild(p1winsu)
        
    
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         for touch in touches {
              let location = touch.location(in: self)
              let touchedNode = atPoint(location)
              if touchedNode.name == "tausta" {
                print("touched")
              getscene()
                pelilog().resetpoints()
                   
              }}}
            func getscene() {
                let reveal = SKTransition.crossFade(withDuration: 1)
                        let newScene = GameScene(size: CGSize(width: 1536, height: 2048))
                        
                scene?.view!.presentScene(newScene,
                                                transition: reveal)
            }
    
}
