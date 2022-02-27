//
//  kirjainkirjoitus.swift
//  Squarewar
//
//  Created by Jaakko Satuli on 13.2.2022.
//

import Foundation
import SwiftUI
import SpriteKit


var satunnaisKirjaimet = "ee"

class kirjoitus {
    
    var kirjaimet: Array = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
   
  
    func Satunnainenkombinaatio() {
        let b = kirjaimet.shuffled()[0...8]
        
        print(b)
    }
  
    
    func SatunnainenkombinaatioString() -> String {
    let teksti = kirjaimet.shuffled()[0...8].joined(separator: "")
        satunnaisKirjaimet = teksti
        return satunnaisKirjaimet
    }
   
   



    func pisteyta(Inputti: String) -> Int {
        print(Array(Inputti))

        print(Array(satunnaisKirjaimet))
        var pisteet:Int = 0
        var kirjain: Int = 0
        for a in Array(Inputti){
            if Array(Inputti).count == Array(satunnaisKirjaimet).count && a == Array(satunnaisKirjaimet)[kirjain]{
                pisteet += 1
                kirjain += 1
            }
            
        }
    return pisteet
    }



    

}
