//
//  difi.swift
//  Juegos
//
//  Created by ISSC_412_2022 on 19/05/22.
//

import Cocoa

class difi: NSViewController {
    var dificultad = 0
        
        @IBAction func dificultad(_ sender: NSButton) {
            if  (sender.title == "Basico"){
                dificultad = 1
                performSegue(withIdentifier: "pregun", sender: self)            }
            if  (sender.title == "Intermedio"){
                dificultad = 2
                performSegue(withIdentifier: "pregun", sender: self)            }
            if  (sender.title == "Avanzado"){
                dificultad = 3
                performSegue(withIdentifier: "pregun", sender: self)            }
        }
        
        
        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
        }

        override var representedObject: Any? {
            didSet {
            // Update the view, if already loaded.
            }
        }
        override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
            if segue.identifier=="pregun"{
                (segue.destinationController as! NSViewController).representedObject = preguntados.self
            }
    }
    
}
