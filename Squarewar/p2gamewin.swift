//
//  p2gamewin.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 14.1.2022.
//


import Foundation
import UIKit
import SpriteKit
import GameplayKit



class p2gamewin: SKScene {
    
    
    override func didMove(to view: SKView) {
        let tausta = SKSpriteNode(imageNamed: "menu")
        tausta.size = self.size
        tausta.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        tausta.zPosition = 0
        tausta.name = "tausta"
        self.addChild(tausta)
        
        let nimi = SKLabelNode(fontNamed: "Chalkduster")
           nimi.text = "_____________________________________________________"
           nimi.fontColor = .black
           nimi.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
           nimi.fontSize = self.size.width/20
           nimi.isUserInteractionEnabled = true
           
           nimi.zPosition = 1
           addChild(nimi)
        
    
        let p2wins = SKLabelNode(fontNamed: "Chalkduster")
        
        p2wins.text = "DEFEAT"
        p2wins.fontColor = .white
        p2wins.position = CGPoint(x: self.size.width/2, y: self.size.height*0.75)
        p2wins.fontSize = self.size.width/5.5
        p2wins.zRotation = 3.14159265
        p2wins.zPosition = 1
           addChild(p2wins)
        
        let p2winsu = SKLabelNode(fontNamed: "Chalkduster")
        
        p2winsu.text = "VICTORY"
        p2winsu.fontColor = .white
        p2winsu.position = CGPoint(x: self.size.width/2, y: self.size.height/4)
        p2winsu.fontSize = self.size.width/5.5
        p2winsu.zPosition = 1
           addChild(p2winsu)
    
    
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
