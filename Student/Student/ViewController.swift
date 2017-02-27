//
//  ViewController.swift
//  Student
//
//  Created by iMac staff 1 on 13/02/2017.
//  Copyright © 2017 iMac staff 1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var notesBob = [15.0,14.5,9,2,8]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Moyenne(_ sender: Any){
        
        var moyenne:Double = 0
        var n = 0
        
        for x in notesBob
        {
            moyenne = moyenne + notesBob[n]
            n = n+1
        }
        
        if n != 0 {
            moyenne = moyenne / (Double)(n)
        }
        
        ResultatMoyenne.text = "Votre moyenne est de \(moyenne)"
    }
    
    @IBAction func BtnAjoutNote(_ sender: Any) {
        notesBob.append((Double)(textNote.text!)!)
        
    }
    
    @IBOutlet weak var ResultatMoyenne: UILabel!
    
    @IBOutlet weak var textNote: UITextField!
}

