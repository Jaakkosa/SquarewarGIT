//
//  GameScene.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 10.1.2022.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
 
    
    override func didMove(to view: SKView) {
        
       
        let tausta = SKSpriteNode(imageNamed: "menu")
        tausta.size = self.size
        tausta.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        tausta.zPosition = 0
        self.addChild(tausta)
        
     let nimi = SKLabelNode(fontNamed: "Chalkduster")
        nimi.text = "SQUARE WARS"
        nimi.fontColor = .white
        nimi.position = CGPoint(x: self.size.width/2, y: self.size.height*0.91)
        nimi.fontSize = self.size.width/9
        nimi.isUserInteractionEnabled = true
   
      
        nimi.zPosition = 2
        addChild(nimi)
        let bo3 = SKLabelNode(fontNamed: "Chalkduster")
        bo3.text = "First to 3"
        bo3.fontColor = .white
        bo3.position = CGPoint(x: self.size.width/2, y: self.size.height*0.7)
        bo3.fontSize = self.size.width/10
        bo3.zPosition = 2
            addChild(bo3)
        bo3.name = "bo3tausta"
        
        let bo3tausta = SKSpriteNode(imageNamed: "b")
        bo3tausta.size = CGSize(width: self.size.width/1.5, height: self.size.height/12)
        bo3tausta.position = CGPoint(x: self.size.width/2, y: self.size.height*0.725)
        bo3tausta.zPosition = 1
        addChild(bo3tausta)
        bo3tausta.name = "bo3tausta"
        
        let bo5 = SKLabelNode(fontNamed: "Chalkduster")
        bo5.text = "First to 5"
        bo5.fontColor = .white
        bo5.position = CGPoint(x: self.size.width/2, y: self.size.height*0.5)
        bo5.fontSize = self.size.width/10
    
        bo5.zPosition = 2
        bo5.name = "bo5"
            addChild(bo5)
        
 
        
        
        
        let bo5tausta = SKSpriteNode(imageNamed: "b")
        bo5tausta.size = CGSize(width: self.size.width/1.5, height: self.size.height/12)
        bo5tausta.position = CGPoint(x: self.size.width/2, y: self.size.height*0.525)
        bo5tausta.zPosition = 1
        bo5tausta.name = "bo5"
        addChild(bo5tausta)
        
        let ohjeet = SKLabelNode(fontNamed: "Chalkduster")
        ohjeet.text = "Rules"
        ohjeet.fontColor = .white
        ohjeet.position = CGPoint(x: self.size.width/2, y: self.size.height*0.3)
        ohjeet.fontSize = self.size.width/10
        ohjeet.isUserInteractionEnabled = true
        ohjeet.zPosition = 2
        ohjeet.name = "rules"
            addChild(ohjeet)
        
        let ohjeettausta = SKSpriteNode(imageNamed: "b")
        ohjeettausta.size = CGSize(width: self.size.width/1.5, height: self.size.height/12)
        ohjeettausta.position = CGPoint(x: self.size.width/2, y: self.size.height*0.325)
        ohjeettausta.zPosition = 1
        ohjeettausta.name = "rules"
        
        addChild(ohjeettausta)
        
   
       
                            

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         for touch in touches {
              let location = touch.location(in: self)
              let touchedNode = atPoint(location)
              if touchedNode.name == "bo3tausta" {
                print("touched")
              getscene()
                   
              }
            if touchedNode.name == "bo5" {
                print("bo5touched")
                pelilog().transformtoBo5()
                getscene()
                
                
            }
            if touchedNode.name == "rules"{
                
                ohjeetScene()
                
            }
            func getscene() {
             
                let reveal = SKTransition.crossFade(withDuration: 1)
                        let newScene = roundbegin3(size: CGSize(width: 1536, height: 2048))
                        
                scene?.view!.presentScene(newScene,
                                                transition: reveal)
            }
            func ohjeetScene() {
                let reveal = SKTransition.crossFade(withDuration: 1)
                        let newScene = Rules(size: CGSize(width: 1536, height: 2048))
                        
                scene?.view!.presentScene(newScene,
                                                transition: reveal)
                
            }
            
         }
    }
    
    
        
    }

