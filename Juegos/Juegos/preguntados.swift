//
//  preguntados.swift
//  Juegos
//
//  Created by ISSC_412_2022 on 19/05/22.
//

import Cocoa

class preguntados: NSViewController {
var score = 0
    var anterior:Int=0
    var vida = 3
    @IBOutlet weak var scorel: NSTextField!
    @IBOutlet weak var img3: NSImageView!
    @IBOutlet weak var img2: NSImageView!
    @IBOutlet weak var im1: NSImageView!
    @IBOutlet weak var img: NSImageView!
    @IBOutlet weak var pre: NSTextField!
    @IBOutlet weak var imgp: NSImageView!
    @IBOutlet weak var ex: NSTextField!
    var quiz = [["En el parchis tradicional se utilizan 20 fichas como maximo?","No"],
                ["Francia es el segundo pais mas grande de europa?","Si"],
                ["La india fue el primer pais en utilizar el papel?","No"],
                ["Escocia tiene a la flor del cardo cpor simbolo?","Si"],
                ["Gengis Kan fue un guerrero mongol que se convirtió en emperador de China.","Si"],
                ["el francés es el idioma oficial de Andorra.","No"],
                ["Vicente Aleixandre fue el primer Nobel español que ganó un premio Planeta.","No"],
                ["Paul McCartney era el miembro más joven de los Beatles","No"],
                ["el Vaticano es la basílica más grande de la cristiandad.","Si"],
                [ "Albert Einstein dijo que la cuarta guerra mundial se lucharía con piedras.","Si"],
                ["el Museo del Prado es la pinacoteca más grande de España.","Si"],
                ["los holandeses introdujeron en España los molinos de viento.","No"],
                ["Ofelia era el amor de Hamlet","Si"],
                ["Miguel Indurain fue el ciclista más joven en vestir el jersey de líder en la Vuelta Ciclista a España.","Si"],
                ["Abraham fue quien impulsó la migración hebrea hacia Canaán","No"],
                ["Moliére además de escritor, desempeñó el trabajo de actor en el teatro.","Si"],
                ["el presidente estadounidense Dwight Eisenhower padeció poliomielitis. ","No"],
                ["Miguel de Cervantes estuvo cautivo en Argelia.","Si"],
                ["las plantas se reproducen.","Si"],
                ["Instagram es la red social más usada del mundo.","No"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        anterior = lanzarpregunta()        // Do view setup here.
    }
    func lanzarpregunta()->Int {
        let aleatorio = Int.random(in: 0...quiz.count-1)
        pre.stringValue=quiz[aleatorio][0]
        return aleatorio
            
            }
    @IBAction func res(_ sender: NSButton) {
        let resuser = sender.title
        let resactual = quiz[anterior][1]
        
        if resuser == resactual {
            score += 1
            scorel.stringValue = "score:\(score)"
            img.image = NSImage(named: "Correct")
        }
        else{
            img.image = NSImage(named: "Incorrect")
            
        }
        if resuser != resactual {
            vida -= 1
            if vida == 2{
                im1.image = NSImage(named: "Heart")
                img2.image = NSImage(named: "Heart")
                img3.image = NSImage(named: "")
                
            }
            else if vida == 1{
                im1.image = NSImage(named: "Heart")
                img2.image = NSImage(named: "")
                img3.image = NSImage(named: "")
        }
        else if vida == 0{
            im1.image = NSImage(named: "")
            img2.image = NSImage(named: "")
            img3.image = NSImage(named: "")
            
        }
        }
        print(sender.title)
        anterior = lanzarpregunta()
        }
    }
