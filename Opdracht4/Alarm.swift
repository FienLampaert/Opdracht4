//
//  Alarm.swift
//  Opdracht4
//
//  Created by student on 18/10/18.
//  Copyright © 2018 gebruiker. All rights reserved.
//

import Foundation

class Alarm{
    
    var minuten: Int
    var uur: Int
    
    init(){
        self.minuten = 0
        self.uur = 0
    }
    
    func setMinuten(min: Int){
        self.minuten = min
    }
    
    func setUur(uur: Int){
        self.uur = uur
    }
    
    func getMinuten() -> Int{
        return self.minuten
    }
    
    func getUur() -> Int{
        return self.uur
    }
    
    func toString() -> String {
        if (minuten < 10){
            return String(self.uur) + ":0" + String(self.minuten)
        }
        else{
            return String(self.uur) + ":" + String(self.minuten)
        }
        
    }
}
