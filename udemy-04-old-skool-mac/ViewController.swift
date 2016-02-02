//
//  ViewController.swift
//  udemy-04-old-skool-mac
//
//  Created by David Stroud on 02/02/2016.
//  Copyright © 2016 David Stroud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainLbl: UILabel!
    
    var phrases = ["Booting from floppy...\n", "Reading from disk...\n", "Updating registry...\n", "....................\n", "....................\n", "......................................\n", "Welcome!\nNice to see you again.\n>"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MainLbl.text = ""

        // three different ways of looping...!

        // method 1
//        for var x = 0; x < phrases.count; x=x+1 {
//            var txt = MainLbl.text!
//            txt += phrases[x]
//            MainLbl.text = txt
//        }

        // method 2
        var x = 0
        repeat {
            var txt = MainLbl.text!
            txt += phrases[x]
            MainLbl.text = txt
            x = x + 1
        } while x < phrases.count
        
        // method 3
//        for phrase in phrases {
//            var txt = MainLbl.text!
//            txt += phrase
//            MainLbl.text = txt
//        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

