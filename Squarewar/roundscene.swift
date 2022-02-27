//
//  roundscene.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 10.1.2022.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

class NewGameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let tausta = SKSpriteNode(imageNamed: "menu")
        tausta.size = self.size
        tausta.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        tausta.zPosition = 0
        self.addChild(tausta)

        
        
        
        
        let square1 = SKShapeNode(rectOf: CGSize(width: self.size.width*0.195, height: self.size.height*0.1))
       square1.name = "P1"
        square1.fillColor = .white
        square1.position = CGPoint(x: self.size.width*0.295, y: self.size.height*0.8)
        square1.zPosition = 1
  
        
        let square2 = SKShapeNode(rectOf: CGSize(width: self.size.width*0.195, height: self.size.height*0.1))
        square2.name = "P1"
         square2.fillColor = .white
         square2.position = CGPoint(x: self.size.width*0.705, y: self.size.height*0.8)
         square2.zPosition = 1
   
        
        let square3 = SKShapeNode(rectOf: CGSize(width: self.size.width*0.195, height: self.size.height*0.1))
       square3.name = "P1"
        square3.fillColor = .white
        square3.position = CGPoint(x: self.size.width*0.295, y: self.size.height*0.65)
        square3.zPosition = 1
       
        
        let square4 = SKShapeNode(rectOf: CGSize(width: self.size.width*0.195, height: self.size.height*0.1))
        square4.name = "P1"
         square4.fillColor = .white
         square4.position = CGPoint(x: self.size.width*0.705, y: self.size.height*0.65)
         square4.zPosition = 1
       
        
        let square5 = SKShapeNode(rectOf: CGSize(width: self.size.width*0.195, height: self.size.height*0.1))
       square5.name = "P2"
        square5.fillColor = .white
        square5.position = CGPoint(x: self.size.width*0.295, y: self.size.height*0.2)
        square5.zPosition = 1
     
        
        let square6 = SKShapeNode(rectOf: CGSize(width: self.size.width*0.195, height: self.size.height*0.1))
        square6.name = "P2"
         square6.fillColor = .white
         square6.position = CGPoint(x: self.size.width*0.705, y: self.size.height*0.2)
         square6.zPosition = 1

        
        let square7 = SKShapeNode(rectOf: CGSize(width: self.size.width*0.195, height: self.size.height*0.1))
       square7.name = "P2"
        square7.fillColor = .white
        square7.position = CGPoint(x: self.size.width*0.295, y: self.size.height*0.35)
        square7.zPosition = 1
 
        
        let square8 = SKShapeNode(rectOf: CGSize(width: self.size.width*0.195, height: self.size.height*0.1))
        square8.name = "P2"
         square8.fillColor = .white
        square8.position = CGPoint(x: self.size.width*0.705, y: self.size.height*0.35)
         square8.zPosition = 1
       
        
       let randomiluku = Int.random(in: 1..<5)
       
        if(randomiluku == 1) {
            addChild(square1)
            addChild(square5)
        }
        
        if(randomiluku == 2) {
            addChild(square2)
            addChild(square6)
        }
        
        if(randomiluku == 3) {
            addChild(square3)
            addChild(square7)
        }
        
        if(randomiluku == 4) {
            addChild(square4)
            addChild(square8)
        }
        
        let nimi = SKLabelNode(fontNamed: "Chalkduster")
           nimi.text = "_____________________________________________________"
           nimi.fontColor = .black
           nimi.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
           nimi.fontSize = self.size.width/20
           nimi.isUserInteractionEnabled = true
           
           nimi.zPosition = 1
           addChild(nimi)
        
        
    
    }
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
             for touch in touches {
                  let location = touch.location(in: self)
                  let touchedNode = atPoint(location)
                if touchedNode.name == "P1" {
                    print("P1touched")
                   pelilog().addpointsP1()
                    if(pelilog().didp1win() == false) {
                        getscene1()
                    }
                    else {
                        pelilog().whoIsOnRedemption(kuka: 1)
                        getRedemptionScene()
                        
                    }
                    
                  }
                if touchedNode.name == "P2" {
                    print("P2touched")
                    pelilog().addpointsP2()
                    if(pelilog().didp2win() == false) {
                        getscene2()
                    }
                    else {
                        pelilog().whoIsOnRedemption(kuka: 2)
                        getRedemptionScene()
                    }
                   
                }
                
                
                func getscene1() {
                 
                    let reveal = SKTransition.doorway(withDuration: 1)
                    let newScene = p1roundwin(size: CGSize(width: 1536, height: 2048))
                    
                    scene?.view!.presentScene(newScene,transition: reveal)
                
            
            }
                func getscene2() {
                 
                    let reveal = SKTransition.doorway(withDuration: 1)
                    let newScene = p2roundwin(size: CGSize(width: 1536, height: 2048))
                    
                    scene?.view!.presentScene(newScene,
                                                    transition: reveal)
                
            
            }
                func getRedemptionScene() {
                    let reveal = SKTransition.doorway(withDuration: 1)
                    let newScene = teksti2(size: CGSize(width: 1536, height: 2048))
                    scene?.view!.presentScene(newScene,transition: reveal)
                }
                
                
                
                
                
                
                
             } }
    
    
}

