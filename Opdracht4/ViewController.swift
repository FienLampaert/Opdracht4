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
    
    @IBOutlet weak var LongPress: UIView!
    
    @objc func Long() {
        LongPress.backgroundColor = UIColor.purple
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        ClockHelper(delegate: self)

        let longG = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.Long))
        //longG.minimumPressDuration = 1.5
        LongPress.addGestureRecognizer(longG)
    }
    
    func updateClock(_ result: Array<String>) {
        tijd(result: result)
    }
    
    func tijd(result: Array<String>){
        for label in self.lblAll {
            label.textColor = UIColor.white
        }
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
