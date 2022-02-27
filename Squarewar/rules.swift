//
//  rules.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 27.2.2022.
//

import Foundation
import SpriteKit
import SwiftUI

class Rules: SKScene {
    
    override func didMove(to view: SKView) {
        
        let tausta = SKSpriteNode(imageNamed: "menu")
        tausta.size = self.size
        tausta.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        tausta.zPosition = 0
        self.addChild(tausta)
    
        let otsikko = SKLabelNode(fontNamed: "Chalkduster")
           otsikko.text = "How to Play"
        otsikko.fontColor = .white
        otsikko.position = CGPoint(x: self.size.width/2, y: self.size.height*0.95)
        otsikko.fontSize = self.size.width/13
        otsikko.isUserInteractionEnabled = true
        otsikko.zPosition = 1
        self.addChild(otsikko)
    
let tekstit = SKLabelNode(fontNamed: "Chalkduster")
        tekstit.text = "CLICK THE SQUARE FASTER"
        tekstit.fontColor = .white
        tekstit.position = CGPoint(x: self.size.width/2, y: self.size.height*0.7)
        tekstit.fontSize = self.size.width/20
        tekstit.isUserInteractionEnabled = true
        tekstit.zPosition = 1
        self.addChild(tekstit)
let tekstit2 = SKLabelNode(fontNamed: "Chalkduster")
                tekstit2.text = "REDEMPTION:"
                tekstit2.fontColor = .white
                tekstit2.position = CGPoint(x: self.size.width/2, y: self.size.height*0.6)
                tekstit2.fontSize = self.size.width/20
                tekstit2.isUserInteractionEnabled = true
        tekstit2.zPosition = 1
                self.addChild(tekstit2)
        
let tekstit3 = SKLabelNode(fontNamed: "Chalkduster")
                        tekstit3.text = "Type the given text,"
                        tekstit3.fontColor = .white
                        tekstit3.position = CGPoint(x: self.size.width/2, y: self.size.height*0.5)
                        tekstit3.fontSize = self.size.width/25
                        tekstit3.isUserInteractionEnabled = true
        tekstit3.zPosition = 1
                        self.addChild(tekstit3)
        let tekstit4 = SKLabelNode(fontNamed: "Chalkduster")
                                tekstit4.text = "You have 4 seconds"
                                tekstit4.fontColor = .white
                                tekstit4.position = CGPoint(x: self.size.width/2, y: self.size.height*0.45)
                                tekstit4.fontSize = self.size.width/25
                                tekstit4.isUserInteractionEnabled = true
        tekstit4.zPosition = 1
                                self.addChild(tekstit4)

        
        let tekstit5 = SKLabelNode(fontNamed: "Chalkduster")
                                tekstit5.text = "TIP:"
                                tekstit5.fontColor = .white
        tekstit5.position = CGPoint(x: self.size.width/2, y: self.size.height*0.2)
                                tekstit5.fontSize = self.size.width/25
                                tekstit5.isUserInteractionEnabled = true
        tekstit5.zPosition = 1
                                self.addChild(tekstit5)
        
        let tekstit6 = SKLabelNode(fontNamed: "Chalkduster")
                                tekstit6.text = "Go scene lasts 3-8 seconds"
                                tekstit6.fontColor = .white
        tekstit6.position = CGPoint(x: self.size.width/2, y: self.size.height*0.1)
                                tekstit6.fontSize = self.size.width/25
                                tekstit6.isUserInteractionEnabled = true
        tekstit6.zPosition = 1
                                self.addChild(tekstit6)
        
    

        
        
     
    
        


        

    
    }
    
}
