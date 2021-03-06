//
//  ClockHelper.swift
//  Opdracht4
//
//  Created by gebruiker on 10/10/2018.
//  Copyright © 2018 gebruiker. All rights reserved.
//

import Foundation

protocol ClockHelperDelegate{
    func updateClock(_ result: Array<String>)
}

class ClockHelper{
    var delegate: ClockHelperDelegate
    
    var tekst: [String]
    
    init(delegate: ClockHelperDelegate){
        
        tekst = ["HET","IS"]
        
        self.delegate = delegate
        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) {
            (timer) in self.updateClock(timer)
        }
        
        
    }
    
    func updateClock(_ timer: Timer){
        //let result = timer.fireDate.description
        
        tekst.removeAll()
        tekst = ["HET","IS"]
        let resultArray = getTime()
        delegate.updateClock(resultArray)
    }
    
    func setUur(uur: Int){
        switch (uur){
        case 1:
            tekst.append("EEN");
            break;
        case 2:
            tekst.append("TWEE");
            break;
        case 3:
            tekst.append("DRIE");
            break;
        case 4:
            tekst.append("VIER");
            break;
        case 5:
            tekst.append("VIJFu");
            break;
        case 6:
            tekst.append("ZES");
            break;
        case 7:
            tekst.append("ZEVEN");
            break;
        case 8:
            tekst.append("ACHT");
            break;
        case 9:
            tekst.append("NEGEN");
            break;
        case 10:
            tekst.append("TIENu");
            break;
        case 11:
            tekst.append("ELF");
            break;
        case 12:
            tekst.append("TWAALF");
            break;
        case 13:
            tekst.append("EEN");
            break;
        case 14:
            tekst.append("TWEE");
            break;
        case 15:
            tekst.append("DRIE");
            break;
        case 16:
            tekst.append("VIER");
            break;
        case 17:
            tekst.append("VIJFu");
            break;
        case 18:
            tekst.append("ZES");
            break;
        case 19:
            tekst.append("ZEVEN");
            break;
        case 20:
            tekst.append("ACHT");
            break;
        case 21:
            tekst.append("NEGEN");
            break;
        case 22:
            tekst.append("TIENu");
            break;
        case 23:
            tekst.append("ELF");
            break;
        case 00:
            tekst.append("TWAALF");
            break;
            
        default:
            break;
        }
        
    }
    
    func setMinuten(minuten: Int, u: Int){
        switch minuten {
        case 5:
            tekst.append("VIJF");
            tekst.append("OVER");
            setUur(uur: u)
            break
        case 10:
            tekst.append("TIEN");
            tekst.append("OVER");
            setUur(uur: u)
            break
        case 15:
            tekst.append("KWART");
            tekst.append("OVER");
            setUur(uur: u)
            break
        case 20:
            tekst.append("TIEN");
            tekst.append("VOOR");
            tekst.append("HALF");
            let uHalf = u + 1
            setUur(uur: uHalf)
            break
        case 25:
            tekst.append("VIJF");
            tekst.append("VOOR");
            tekst.append("HALF");
            let uHalf = u + 1
            setUur(uur: uHalf)
            break;
        case 30:
            tekst.append("HALF");
            let uHalf = u + 1
            setUur(uur: uHalf)
            break;
        case 35:
            tekst.append("VIJF");
            tekst.append("OVER");
            tekst.append("HALF");
            let uHalf = u + 1
            setUur(uur: uHalf)
            break;
        case 40:
            tekst.append("TIEN");
            tekst.append("OVER");
            tekst.append("HALF");
            let uHalf = u + 1
            setUur(uur: uHalf)
            break;
        case 45:
            tekst.append("KWART");
            tekst.append("VOOR");
            let uHalf = u + 1
            setUur(uur: uHalf)
            break;
        case 50:
            tekst.append("TIEN");
            tekst.append("VOOR");
            let uHalf = u + 1
            setUur(uur: uHalf)
            break;
        case 55:
            tekst.append("VIJF");
            tekst.append("VOOR");
            let uHalf = u + 1
            setUur(uur: uHalf)
            break;
        case 00:
            setUur(uur: u)
            break;
        default:
            break;
        }
    }
    
    func getMinuten(minuten: Int) -> Int{
        var min = 0
        if(minuten % 5 != 0){
            let rest = minuten % 5
            min = minuten - rest
        }
        else{
            min = minuten
        }
        
        return min
    }
    
    func getTime() -> [String]{
        
        let date = Date()
        let calendar = Calendar.current
        let minuten = calendar.component(.minute, from: date)
        let min = getMinuten(minuten: minuten)
        let uur = calendar.component(.hour, from: date)
 
        setMinuten(minuten: min, u: uur)
        
        return tekst;
    }
}
