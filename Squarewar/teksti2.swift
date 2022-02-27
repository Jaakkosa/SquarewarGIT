//
//  teksti2.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 17.2.2022.
//

import Foundation
import SpriteKit
import SwiftUI

class teksti2: SKScene
{    var TextInput:UITextField?
var kayttajanInput = ""
    override func didMove(to view: SKView)
{
    
        
        var TextInput = UITextField()
        
        let tausta = SKSpriteNode(imageNamed: "menu")
        tausta.size = self.size
        tausta.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        tausta.zPosition = 0
        self.addChild(tausta)
        
        var runCount = 0
        TextInput.text = ""
        
        Timer.scheduledTimer(withTimeInterval: 0.0001, repeats: true) { timer in
            runCount += 1
           
            if runCount == runCount {
                self.kayttajanInput(vaihto: TextInput.text ?? "none")
            }
        }
        
        
        func paivita() {
          
        }
        
        


 
     
        
    let myLabel = SKLabelNode(fontNamed:"Chalkduster")
    myLabel.text = ""
    myLabel.fontSize = 15
        myLabel.position = CGPoint(x:self.frame.midX, y:self.frame.midY)
        myLabel.zPosition = 10
    self.addChild(myLabel)
        TextInput.autocorrectionType = .no
        TextInput.autocapitalizationType = .none
        TextInput.layer.zPosition = 10
       
        
    
        /* Autan näiden avulla skaalaamaan kuvaa */
        
        var xKoko: CGFloat {
            if UIDevice.current.userInterfaceIdiom == .phone {
                return UIScreen.main.bounds.width*0.87
            }
            else {
                return UIScreen.main.bounds.width*0.9
            }
        }
        
        var yKoko: CGFloat {
            if UIDevice.current.userInterfaceIdiom == .phone {
                return UIScreen.main.bounds.height*0.8
            }
            else {
                return UIScreen.main.bounds.height*0.9
            }
        }
        


        TextInput.frame = CGRect(x: xKoko/2  ,y: yKoko/2, width: xKoko/6, height: yKoko/10)
        self.view!.addSubview(TextInput)

    TextInput.backgroundColor = .white
        TextInput.text = ""
        var tekstit = TextInput.text
        kayttajanInput(vaihto: tekstit ?? "")
        TextInput.tag = 100
        
        
        
        let play = SKSpriteNode(imageNamed: "play")
        play.size = CGSize(width: self.size.width/5, height: self.size.height/10)
        play.position = CGPoint(x: self.size.width*0.2, y: self.size.height*0.55)
        play.zPosition = 2
        play.name = "play"
        addChild(play)
    
    
        let playTausta = SKShapeNode(rectOf: CGSize(width: self.size.height/5, height: self.size.height/10))
        playTausta.position = CGPoint(x: self.size.width*0.2, y: self.size.height*0.55)
        playTausta.zPosition = 3
        playTausta.name = "play"
        playTausta.alpha = 0
        addChild(playTausta)
    
        let redemption = SKLabelNode(fontNamed: "Chalkduster")
        redemption.text = "REDEMPTION"
        redemption.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.8)
        redemption.zPosition = 3
        redemption.fontSize = self.size.width/8
        addChild(redemption)
        
        let tick = SKSpriteNode(imageNamed: "tick")
        tick.size = CGSize(width: self.size.width/5, height: self.size.height/10)
        tick.position = CGPoint(x: self.size.width*0.8, y: self.size.height*0.55)
        tick.zPosition = 2
        tick.name = "tick"
        tick.alpha = 0.5
        addChild(tick)
        
        let tickTausta = SKShapeNode(rectOf: CGSize(width: self.size.height/5, height: self.size.height/10))
        tickTausta.position = CGPoint(x: self.size.width*0.8, y: self.size.height*0.55)
        tickTausta.zPosition = 3
        tickTausta.name = "tick"
        tickTausta.alpha = 0
        addChild(tickTausta)
        
 
        
    
    
        
       
    
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        /* FIXAA BUGI JOKA JOHTUU LIIASTA PLAY PAINAMISESTA ; PRINTTAA VAIN TEKSTIÄ*/

    for touch in touches
    {
        let location = touch.location(in: self)
        let touchedNode = atPoint(location)
        if touchedNode.name == "play" {
            print("touched")
            let kirjaimetTeksti = kirjoitus().SatunnainenkombinaatioString()
            print(kirjaimetTeksti)
            addaaKirjaimet(tekstit: kirjaimetTeksti)
            
            var runCount = 0
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                print("aika")
                runCount += 1

                if runCount == 4 && pelilog().isP1Redembption() {
                    timer.invalidate()
                    getscenep1win()
                    self.view?.viewWithTag(100)?.removeFromSuperview()
                }
                else if runCount == 4 && !pelilog().isP1Redembption() {
                    getscenep2win()
                    timer.invalidate()
                    self.view?.viewWithTag(100)?.removeFromSuperview()
                }
            }
            
            
        }
            if touchedNode.name == "tick" {
                if kirjoitus().pisteyta(Inputti: kayttajanInput) == 9 || kirjoitus().pisteyta(Inputti: kayttajanInput) == 8 {
                    getroundscene()
                    self.view?.viewWithTag(100)?.removeFromSuperview()
                    print(kirjoitus().pisteyta(Inputti: kayttajanInput))
                    if pelilog().isP1Redembption() {
                        pelilog().removePointsP1()
                    }
                    else {pelilog().removePointsP2()}
                    
                }
                
                else if (kirjoitus().pisteyta(Inputti: kayttajanInput) != 8 || kirjoitus().pisteyta(Inputti: kayttajanInput) != 9) && pelilog().isP1Redembption() {
                    getscenep1win()
                    self.view?.viewWithTag(100)?.removeFromSuperview()
                    print("p1voitti")
                    print((kirjoitus().pisteyta(Inputti: kayttajanInput)))
                }
                else {
                    
                        getscenep2win()
                    self.view?.viewWithTag(100)?.removeFromSuperview()
                    print("p2voitti")
                    print((kirjoitus().pisteyta(Inputti: kayttajanInput)))
                    }
                }
            
    
        
        func addaaKirjaimet(tekstit: String) {
            let a = SKLabelNode(fontNamed: "Chalkduster")
               a.text = tekstit
              a.fontColor = .white
            a.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.7)
               a.fontSize = self.size.width/10
               a.isUserInteractionEnabled = true
               
              a.zPosition = 3
               addChild(a)
            
        }

     
    
   

    
    func getscenep1win() {
        
        let reveal = SKTransition.doorway(withDuration: 1)
        let newScene = p1gamewin(size: CGSize(width: 1536, height: 2048))
        
        scene?.view!.presentScene(newScene,
                                        transition: reveal)
        
    }
    
    func getscenep2win() {
        
        let reveal = SKTransition.doorway(withDuration: 1)
        let newScene = p2gamewin(size: CGSize(width: 1536, height: 2048))
        
        scene?.view!.presentScene(newScene,
                                        transition: reveal)
        
    }
    
    func getroundscene() {
     
        
        let reveal = SKTransition.crossFade(withDuration: 1)
                let newScene = roundbegin3(size: CGSize(width: 1536, height: 2048))
                
        scene?.view!.presentScene(newScene,
                                        transition: reveal)
        

    }
    
    } }

    func pisteytys(teksti: String) -> Int{
      return kirjoitus().pisteyta(Inputti: teksti)
    
        
    }
    func kayttajanInput(vaihto: String) {
        kayttajanInput = vaihto
    }
    
    override func update(_ currentTime: CFTimeInterval) {
    /* Called before each frame is rendered */
}
    
}
