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
}
