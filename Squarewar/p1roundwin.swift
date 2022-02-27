//
//  p1roundwin.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 14.1.2022.
//

import Foundation
import Foundation
import UIKit
import SpriteKit
import GameplayKit
class p1roundwin: SKScene {
    
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
        
        
        let p1wins = SKLabelNode(fontNamed: "Chalkduster")
        
        p1wins.text = "ROUND WON"
        p1wins.fontColor = .white
        p1wins.position = CGPoint(x: self.size.width/2, y: self.size.height*0.75)
        p1wins.fontSize = self.size.width/8
        p1wins.zRotation = 3.14159265
        p1wins.zPosition = 1
           addChild(p1wins)
        
        let p1winsu = SKLabelNode(fontNamed: "Chalkduster")
        
        p1winsu.text = "ROUND LOST"
        p1winsu.fontColor = .white
        p1winsu.position = CGPoint(x: self.size.width/2, y: self.size.height/4)
        p1winsu.fontSize = self.size.width/8
        p1winsu.zPosition = 1
           addChild(p1winsu)
        
        let p2points = SKLabelNode(fontNamed: "Chalkduster")
        
        p2points.text = "Your score: " + pelilog().P2score()
        p2points.fontColor = .white
        p2points.position = CGPoint(x: self.size.width/2, y: self.size.height/8)
        p2points.fontSize = self.size.width/10
        p2points.zPosition = 1
           addChild(p2points)
        
        let p1points = SKLabelNode(fontNamed: "Chalkduster")
        p1points.text = "Your score: " + pelilog().P1score()
        p1points.fontColor = .white
        p1points.position = CGPoint(x: self.size.width/2, y: self.size.height*0.875)
        p1points.fontSize = self.size.width/10
        p1points.zRotation = 3.14159265
        p1points.zPosition = 1
           addChild(p1points)
        
        

        
            

    
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         for touch in touches {
              let location = touch.location(in: self)
              let touchedNode = atPoint(location)
              if touchedNode.name == "tausta" {
                print("tausta touched")
                getroundstart()
                

              }}}
    
    func getroundstart() {
     
        
        let newScene = roundbegin3(size: CGSize(width: 1536, height: 2048))
        
        scene?.view!.presentScene(newScene)


    }
}
