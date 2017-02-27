//
//  ViewControllerYves.swift
//  Student
//
//  Created by iMacFabLab on 14/02/2017.
//  Copyright © 2017 iMac staff 1. All rights reserved.
//

import UIKit

class ViewControllerYves: UIViewController {

    var notesYves = [16,18,14.0,5,4]
    
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
        
        for x in notesYves
        {
            moyenne = moyenne + notesYves[n]
            n = n+1
        }
        
        moyenne = moyenne / (Double)(n)
        
        ResultatMoyenne.text = "Votre moyenne est de \(moyenne)"
        
    }
    
    
    @IBOutlet weak var ResultatMoyenne: UILabel!
    
    @IBOutlet weak var textNote: UITextField!

    @IBAction func BtnAjoutNote(_ sender: Any) {
        notesYves.append((Double)(textNote.text!)!)
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
