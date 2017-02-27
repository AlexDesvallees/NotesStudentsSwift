//
//  ViewControllerPolo.swift
//  Student
//
//  Created by iMacFabLab on 14/02/2017.
//  Copyright © 2017 iMac staff 1. All rights reserved.
//

import UIKit

class ViewControllerPolo: UIViewController {
    
    var notesPolo = [19.0,20.0,17.0,12.2,4]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Moyenne(_ sender: Any) {
        
        var moyenne:Double = 0
        var n = 0
        
        for x in notesPolo
        {
            moyenne = moyenne + notesPolo[n]
            n = n+1
        }
        
        if n != 0 {
            moyenne = moyenne / (Double)(n)
        }
        
        ResultatMoyenne.text = "Votre moyenne est de \(moyenne)"
        
    }

    @IBOutlet weak var ResultatMoyenne: UILabel!
   

    @IBOutlet weak var textNote: UITextField!
    
    @IBAction func BtnAjoutNote(_ sender: Any) {
        notesPolo.append((Double)(textNote.text!)!)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
