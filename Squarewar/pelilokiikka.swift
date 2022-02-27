//
//  pelilokiikka.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 11.1.2022.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

var P1: Int = 2
var P2: Int = 2
var redemption: Int = 1
var BO5 = false


class pelilog {
    
    func transformtoBo5() {
        BO5 = true
        
    }
    func whoIsOnRedemption(kuka: Int) {
        redemption = kuka
    }
    
    func P1score() -> String {
        return String(P1)
    }
    
    func P2score() -> String {
        return String(P2)
    }
    func isP1Redembption() -> Bool {
        if redemption == 1{ return true}
        else {return false}
    }

func P1points() -> Int {
 return 1
    
}
    
    func points() -> Int {
      return P1
        
    }
    func addpointsP1() {
    P1 += 1


    }
    func addpointsP2() {
        P2 += 1
     
    
    

}
    func removePointsP2() {
        P2 -= 1
    }
    
    func removePointsP1() {
        P1 -= 1
    }
    
    
    func didp1win() -> Bool {
        
        if P1 == 3 && BO5 == false  {return true}
        else if P1 == 5 && BO5 == true {return true}
        else {return false}
    }
    func didp2win() -> Bool {
        
        if P2 == 3 && BO5 == false  {return true}
        else if P2 == 5 && BO5 == true {return true}
        else {return false}
        
    }
    func resetpoints() {
        P1 = 0
        P2 = 0
    }

}
