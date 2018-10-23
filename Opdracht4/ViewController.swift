//
//  ViewController.swift
//  Opdracht4
//
//  Created by gebruiker on 09/10/2018.
//  Copyright © 2018 gebruiker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ClockHelperDelegate {   

    //let ch = ClockHelper(delegate: self as! ClockHelperDelegate)
    let a = Alarm()
    
    @IBOutlet var lblHet: [UILabel]!
    @IBOutlet var lblIs: [UILabel]!
    @IBOutlet var lblVijf: [UILabel]!
    @IBOutlet var lblTien: [UILabel]!
    @IBOutlet var lblKwart: [UILabel]!
    @IBOutlet var lblOver: [UILabel]!
    @IBOutlet var lblVoor: [UILabel]!
    @IBOutlet var lblHalf: [UILabel]!
    @IBOutlet var lblTwee: [UILabel]!
    @IBOutlet var lblAcht: [UILabel]!
    @IBOutlet var lblEen: [UILabel]!
    @IBOutlet var lblVier: [UILabel]!
    @IBOutlet var lblZeven: [UILabel]!
    @IBOutlet var lblElf: [UILabel]!
    @IBOutlet var lblTwaalf: [UILabel]!
    @IBOutlet var lblZes: [UILabel]!
    @IBOutlet var lblDrie: [UILabel]!
    @IBOutlet var lblVijf2: [UILabel]!
    @IBOutlet var lblNegen: [UILabel]!
    @IBOutlet var lblTien2: [UILabel]!

    @IBOutlet var lblAll: [UILabel]!
    @IBOutlet var image: UIImageView!
    
    @IBOutlet weak var LongPress: UIView!
    
    @objc func Long() {
        //LongPress.backgroundColor = UIColor.purple
        
        let alert = UIAlertController(title: "Configuratie", message: "Instellen van wekker.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Annuleer", style: .default, handler:nil))
        alert.addAction(UIAlertAction(title: "Bewaar", style: .default, handler: {
            action in
            let alarm = alert.textFields?.first?.text
            if alarm?.trimmingCharacters(in: .whitespaces) != ""{
                self.setAlarm(alarm: alarm!)
            }
            /*else{
                self.Long()
            }*/
            
        }))
        
        alert.addTextField(configurationHandler: {
            textField in
            textField.placeholder = "Geef je tijd in als uu:mm bv. 08:30"
        })
        
        self.present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        ClockHelper(delegate: self)

        let longG = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.Long))
        //longG.minimumPressDuration = 1.5
        LongPress.addGestureRecognizer(longG)
    }
    
    func setAlarm(alarm: String){
        let correct = controle(alarm: alarm)
        
        if correct == true {
            let time = alarm.split(separator: ":")
            let uur = Int(time[0])
            let min = Int(time[1])
            
            a.setUur(uur: uur!)
            a.setMinuten(min: min!)
        }
    }
    
    func controle(alarm: String) -> Bool{
        var correct = false
        
        if alarm.count == 5{
            if(alarm.firstIndex(of: ":") != nil){
                let time = alarm.split(separator: ":")
                let uur = Int(time[0])
                let min = Int(time[1])
                if(uur! >= 0){
                    if(uur! < 24)
                    {
                        if(min! >= 0) {
                            if(min! < 60){
                                correct = true
                                image.isHidden = false;
                                image.backgroundColor = nil
                            }
                            else{
                                image.isHidden = false;
                                image.backgroundColor = UIColor.red;
                            }
                        }
                        else{
                            image.isHidden = false;
                            image.backgroundColor = UIColor.red;
                        }
                    }
                    else{
                        image.isHidden = false;
                        image.backgroundColor = UIColor.red;
                    }
                }
                else{
                    image.isHidden = false;
                    image.backgroundColor = UIColor.red;
                }
            }
            else{
                image.isHidden = false;
                image.backgroundColor = UIColor.red;
            }
            
        }
        else{
            image.isHidden = false;
            image.backgroundColor = UIColor.red;
        }
        
        
        return correct
    }
    
    func updateClock(_ result: Array<String>) {
        for label in lblAll {
            label.textColor = UIColor.white
        }
        
        tijd(result: result)
    }
    
    func tijd(result: Array<String>){
        
        let time = result
        
        time.forEach { woord in
            switch (woord){
            case "HET":
                for label in self.lblHet {
                    label.textColor = UIColor.black
                }
                break
            case "IS":
                for label in self.lblIs {
                    label.textColor = UIColor.black
                }
                break
            case "VIJF":
                for label in self.lblVijf {
                    label.textColor = UIColor.black
                }
                break
            case "TIEN":
                for label in self.lblTien {
                    label.textColor = UIColor.black
                }
                break
            case "KWART":
                for label in self.lblKwart {
                    label.textColor = UIColor.black
                }
                break
            case "OVER":
                for label in self.lblOver {
                    label.textColor = UIColor.black
                }
                break
            case "VOOR":
                for label in self.lblVoor {
                    label.textColor = UIColor.black
                }
                break
            case "HALF":
                for label in self.lblHalf {
                    label.textColor = UIColor.black
                }
                break
            case "TWEE":
                for label in self.lblTwee {
                    label.textColor = UIColor.black
                }
                break
            case "ACHT":
                for label in self.lblAcht {
                    label.textColor = UIColor.black
                }
                break
            case "EEN":
                for label in self.lblEen {
                    label.textColor = UIColor.black
                }
                break
            case "VIER":
                for label in self.lblVier {
                    label.textColor = UIColor.black
                }
                break
            case "ZEVEN":
                for label in self.lblZeven {
                    label.textColor = UIColor.black
                }
                break
            case "ELF":
                for label in self.lblElf {
                    label.textColor = UIColor.black
                }
                break
            case "TWAALf":
                for label in self.lblTwaalf {
                    label.textColor = UIColor.black
                }
                break
            case "ZES":
                for label in self.lblZes {
                    label.textColor = UIColor.black
                }
                break
            case "DRIE":
                for label in self.lblDrie {
                    label.textColor = UIColor.black
                }
                break
            case "VIJFu":
                for label in self.lblVijf2 {
                    label.textColor = UIColor.black
                }
                break
            case "NEGEN":
                for label in self.lblNegen {
                    label.textColor = UIColor.black
                }
                break
            case "TIENu":
                for label in self.lblTien2 {
                    label.textColor = UIColor.black
                }
                break
            default:
                break
            }
        }
    }
}
