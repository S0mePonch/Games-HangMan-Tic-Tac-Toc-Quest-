//
//  Tic Tac toe.swift
//  Juegos
//
//  Created by ISSC_412_2022 on 16/05/22.
//

import Cocoa

class Tic_Tac_toe: NSViewController {

    @IBOutlet weak var Player_Turn: NSTextField!
    @IBOutlet weak var btn1: NSButton!
    @IBOutlet weak var btn2: NSButton!
    @IBOutlet weak var btn3: NSButton!
    @IBOutlet weak var btn4: NSButton!
    @IBOutlet weak var btn5: NSButton!
    @IBOutlet weak var btn6: NSButton!
    @IBOutlet weak var btn7: NSButton!
    @IBOutlet weak var btn8: NSButton!
    @IBOutlet weak var btn9: NSButton!
    @IBOutlet weak var ScoreJ1: NSTextField!
    @IBOutlet weak var ScoreJ2: NSTextField!
    var turn: Int = 7568564
    var score = 0
    var score2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        turn = Int.random(in: 1...2)
        Player_Turn.stringValue = "Turno del jugador " + String(turn)
        

    }
    
    let alert = NSAlert()
    
    
    @IBAction func Play_Turn01(_ sender: Any) {
        if(turn == 1){
            btn1.title = "X"
            if(btn1.title == btn2.title && btn2.title == btn3.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "X"
                    btn2.title = "X"
                    btn3.title = "X"
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                }
            }else if(btn1.title == btn5.title && btn5.title == btn9.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "X"
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.title = "X"
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.title = "X"
                   
                }
            }else if(btn1.title == btn4.title && btn4.title == btn7.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "X"
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.title = "x"
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.title = "X"
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                }
            }
            Player_Turn.stringValue = "Turno del jugador 2"
            turn = 2
        }else{
            btn1.title = "O"
            if(btn1.title == btn2.title && btn2.title == btn3.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "O"
                    btn2.title =  "O"
                    btn3.title = "O"
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                }
            }else if(btn1.title == btn5.title && btn5.title == btn9.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "O"
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.title = "O"
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.title = "O"
                    
                }
                
            }
            
            Player_Turn.stringValue = "Turno del jugador 1"
            turn = 1
        }
        
        
    }
    
    @IBAction func Play_Turn02(_ sender: Any) {
        if(turn == 1){
            btn2.title = "X"
            if(btn1.title == btn2.title && btn2.title == btn3.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "X"
                    btn2.title = "X"
                    btn3.title = "X"
                    btn4.isEnabled = false
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                    
                }
                
            }else if(btn2.title == btn5.title && btn5.title == btn8.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.title = "X"
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.title = "X"
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.title = "X"
                    btn9.isEnabled = false
                    
                }
            }
            Player_Turn.stringValue = "Turno del jugador 2"
            turn = 2
        }else{
            btn2.title = "O"
            if(btn1.title == btn2.title && btn2.title == btn3.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "O"
                    btn2.title = "O"
                    btn3.title = "O"
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                    
                }
            }else if(btn2.title == btn5.title && btn5.title == btn8.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.title = "O"
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.title = "O"
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.title = "O"
                    btn9.isEnabled = false
                    
                }
                
            }
            
            Player_Turn.stringValue = "Turno del jugador 1"
            turn = 1
        }
       
    }
    
    @IBAction func Play_Turn03(_ sender: Any) {
        if(turn == 1){
            btn3.title = "X"
            if(btn1.title == btn2.title && btn2.title == btn3.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "X"
                    btn2.title = "X"
                    btn3.title = "X"
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                    
                }
                
            }else if(btn3.title == btn6.title && btn6.title == btn9.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.title = "X"
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.title = "X"
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.title = "X"
                    
                }
            }else if(btn3.title == btn5.title && btn5.title == btn7.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.title = "X"
                    btn4.isEnabled = false
                    btn5.title = "X"
                    btn6.isEnabled = false
                    btn7.title = "X"
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                    
                }
            }
            Player_Turn.stringValue = "Turno del jugador 2"
            turn = 2
            
        }else{
            btn3.title = "O"
            if(btn1.title == btn2.title && btn2.title == btn3.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "O"
                    btn2.title = "O"
                    btn3.title = "O"
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                    
                }
            }else if(btn3.title == btn6.title && btn6.title == btn9.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.title = "O"
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.title = "O"
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.title = "O"
                    
                }
                
            }else if(btn3.title == btn5.title && btn5.title == btn7.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.title = "O"
                    btn4.isEnabled = false
                    btn5.title = "O"
                    btn6.isEnabled = false
                    btn7.title = "O"
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                    
                }
                
            }
            
            Player_Turn.stringValue = "Turno del jugador 1"
            turn = 1
        }
        
        
    }
    
    @IBAction func Play_Turn04(_ sender: Any) {
        if(turn == 1){
            btn4.title = "X"
            if(btn4.title == btn5.title && btn5.title == btn6.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.title = "X"
                    btn5.title = "X"
                    btn6.title = "X"
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                    
                }
                
            }else if(btn4.title == btn1.title && btn1.title == btn7.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "X"
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.title = "X"
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.title = "X"
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                    
                }
                
            }
            Player_Turn.stringValue = "Turno del jugador 2"
            turn = 2
        }else{
            btn4.title = "O"
            if(btn4.title == btn5.title && btn5.title == btn6.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.title = "O"
                    btn5.isEnabled = false
                    btn5.title = "O"
                    btn6.isEnabled = false
                    btn6.title = "O"
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                    
                }
                
            }
            Player_Turn.stringValue = "Turno del jugador 1"
            turn = 1
        }
    }
    
    @IBAction func Play_Turn05(_ sender: Any) {
        
        if(turn == 1){
            btn5.title = "X"
             if(btn5.title == btn1.title && btn1.title == btn9.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                 score += 1
                 ScoreJ1.stringValue = "Wins:\(score)"
                 btn1.title = ""
                 btn2.title = ""
                 btn3.title = ""
                 btn4.title = ""
                 btn5.title = ""
                 btn6.title = ""
                 btn7.title = ""
                 btn8.title = ""
                 btn9.title = ""
                 
                 if(score == 2){
                     alert.messageText = "GANO EL JUGADOR " + String(turn)
                     alert.alertStyle = .critical
                     alert.runModal()
                     btn1.title = "X"
                     btn2.isEnabled = false
                     btn3.isEnabled = false
                     btn4.isEnabled = false
                     btn5.title = "X"
                     btn6.isEnabled = false
                     btn7.isEnabled = false
                     btn8.isEnabled = false
                     btn9.title = "X"
                     
                 }
                 
             }else if(btn5.title == btn4.title && btn4.title == btn6.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                 btn1.title = ""
                 btn2.title = ""
                 btn3.title = ""
                 btn4.title = ""
                 btn5.title = ""
                 btn6.title = ""
                 btn7.title = ""
                 btn8.title = ""
                 btn9.title = ""
                 
                 if(score == 2){
                     alert.messageText = "GANO EL JUGADOR " + String(turn)
                     alert.alertStyle = .critical
                     alert.runModal()
                     btn1.isEnabled = false
                     btn2.isEnabled = false
                     btn3.isEnabled = false
                     btn4.title = "X"
                     btn5.title = "X"
                     btn6.title = "X"
                     btn7.isEnabled = false
                     btn8.isEnabled = false
                     btn9.isEnabled = false
                     
                 }
                 
             }else if(btn5.title == btn2.title && btn2.title == btn8.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                 btn1.title = ""
                 btn2.title = ""
                 btn3.title = ""
                 btn4.title = ""
                 btn5.title = ""
                 btn6.title = ""
                 btn7.title = ""
                 btn8.title = ""
                 btn9.title = ""
                 
                 if(score == 2){
                     alert.messageText = "GANO EL JUGADOR " + String(turn)
                     alert.alertStyle = .critical
                     alert.runModal()
                     btn1.isEnabled = false
                     btn2.title = "X"
                     btn3.isEnabled = false
                     btn4.isEnabled = false
                     btn5.title = "X"
                     btn6.isEnabled = false
                     btn7.isEnabled = false
                     btn8.title = "X"
                     btn9.isEnabled = false
                     
                 }
                 
             }else if(btn5.title == btn3.title && btn3.title == btn7.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                 btn1.title = ""
                 btn2.title = ""
                 btn3.title = ""
                 btn4.title = ""
                 btn5.title = ""
                 btn6.title = ""
                 btn7.title = ""
                 btn8.title = ""
                 btn9.title = ""
                 
                 if(score == 2){
                     alert.messageText = "GANO EL JUGADOR " + String(turn)
                     alert.alertStyle = .critical
                     alert.runModal()
                     btn1.isEnabled = false
                     btn2.isEnabled = false
                     btn3.title = "X"
                     btn4.isEnabled = false
                     btn5.title = "X"
                     btn6.isEnabled = false
                     btn7.title = "X"
                     btn8.isEnabled = false
                     btn9.isEnabled = false
                     
                 }
                 
             }
            Player_Turn.stringValue = "Turno del jugador 2"
            turn = 2
        }else{
            btn5.title = "O"
            if(btn5.title == btn1.title && btn1.title == btn9.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "O"
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.title = "O"
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.title = "O"
                    
                }
                
            }else if(btn5.title == btn4.title && btn4.title == btn6.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.title = "O"
                    btn5.title = "O"
                    btn6.title = "O"
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                    
                }
                
            }else if(btn5.title == btn2.title && btn2.title == btn8.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.title = "O"
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.title = "O"
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.title = "O"
                    btn9.isEnabled = false
                    
                }
                
            }else if(btn5.title == btn3.title && btn3.title == btn7.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.title = "O"
                    btn4.isEnabled = false
                    btn5.title = "O"
                    btn6.isEnabled = false
                    btn7.title = "O"
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                    
                }
                
            }
            
            Player_Turn.stringValue = "Turno del jugador 1"
            turn = 1
        }
    }
    
    @IBAction func Play_Turn06(_ sender: Any) {
        
        if(turn == 1){
            btn6.title = "X"
            if(btn6.title == btn5.title && btn5.title == btn4.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.title = "X"
                    btn5.title = "X"
                    btn6.title = "X"
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                    
                }
                
            }else if(btn6.title == btn3.title && btn3.title == btn9.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.title = "X"
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.title = "X"
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.title = "X"
                    
                }
                
            }
            Player_Turn.stringValue = "Turno del jugador 2"
            turn = 2
        }else{
            btn6.title = "O"
            if(btn6.title == btn5.title && btn5.title == btn4.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.title = "O"
                    btn5.title = "O"
                    btn6.title = "O"
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                    
                }
                
            }else if(btn6.title == btn3.title && btn3.title == btn9.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.title = "O"
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.title = "O"
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.title = "O"
                    
                }
                
            }
            
            Player_Turn.stringValue = "Turno del jugador 1"
            turn = 1
        }
    }
    
    
    @IBAction func Play_Turn07(_ sender: Any) {
        
        if(turn == 1){
            btn7.title = "X"
            if(btn7.title == btn8.title && btn8.title == btn9.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.title = "X"
                    btn8.title = "X"
                    btn9.title = "X"
                    
                }
                
            }else if(btn7.title == btn4.title && btn4.title == btn1.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "X"
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.title = "X"
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.title = "X"
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                }
                
            }else if(btn7.title == btn5.title && btn5.title == btn3.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.title = "X"
                    btn4.isEnabled = false
                    btn5.title = "X"
                    btn6.isEnabled = false
                    btn7.title = "X"
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                }
                
            }
            Player_Turn.stringValue = "Turno del jugador 2"
            turn = 2
        }else{
            btn7.title = "O"
            if(btn7.title == btn8.title && btn8.title == btn9.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.title = "O"
                    btn8.title = "O"
                    btn9.title = "O"
                  
                }
                
            }else if(btn7.title == btn5.title && btn5.title == btn3.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.title = "O"
                    btn4.isEnabled = false
                    btn5.title = "O"
                    btn6.isEnabled = false
                    btn7.title = "O"
                    btn8.isEnabled = false
                    btn9.isEnabled = false
                  
                }
                
            }
            
            Player_Turn.stringValue = "Turno del jugador 1"
            turn = 1
        }
    }
    
    @IBAction func Play_Turn08(_ sender: Any) {
    
        if(turn == 1){
            btn8.title = "X"
            if(btn8.title == btn7.title && btn7.title == btn9.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.title = "X"
                    btn8.title = "X"
                    btn9.title = "X"
                  
                }
                
            }else if(btn8.title == btn5.title && btn5.title == btn2.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.title = "X"
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.title = "X"
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.title = "X"
                    btn9.isEnabled = false
                  
                }
                
            }
            Player_Turn.stringValue = "Turno del jugador 2"
            turn = 2
        }else{
            btn8.title = "O"
            if(btn8.title == btn7.title && btn7.title == btn9.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.title = "O"
                    btn8.title = "O"
                    btn9.title = "O"
                  
                }
                
            }else if(btn8.title == btn5.title && btn5.title == btn2.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.title = "O"
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.title = "O"
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.title = "O"
                    btn9.isEnabled = false
                  
                }
                
            }
            Player_Turn.stringValue = "Turno del jugador 1"
            turn = 1
        }
    }
    
    @IBAction func Play_Turn09(_ sender: Any) {
        if(turn == 1){
            btn9.title = "X"
             if(btn9.title == btn5.title && btn5.title == btn1.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "X"
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.title = "X"
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.title = "X"
                  
                }
                
            }else if(btn9.title == btn8.title && btn8.title == btn7.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.title = "X"
                    btn8.title = "X"
                    btn9.title = "X"
                  
                }
                
            }else if(btn9.title == btn6.title && btn6.title == btn3.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score += 1
                ScoreJ1.stringValue = "Wins:\(score)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.title = "X"
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.title = "X"
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.title = "X"
                  
                }
                
            }
            Player_Turn.stringValue = "Turno del jugador 2"
            turn = 2
        }else{
            btn9.title = "O"
            if(btn9.title == btn5.title && btn5.title == btn1.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.title = "O"
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.title = "O"
                    btn6.isEnabled = false
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.title = "O"
                  
                }
                
            }else if(btn9.title == btn8.title && btn8.title == btn7.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.isEnabled = false
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.isEnabled = false
                    btn7.title = "O"
                    btn8.title = "O"
                    btn9.title = "O"
                }
                
            }else if(btn9.title == btn6.title && btn6.title == btn3.title){
                alert.messageText = "El ganador es el jugador " + String(turn)
                alert.alertStyle = .warning
                alert.runModal()
                score2 += 1
                ScoreJ2.stringValue = "Wins:\(score2)"
                btn1.title = ""
                btn2.title = ""
                btn3.title = ""
                btn4.title = ""
                btn5.title = ""
                btn6.title = ""
                btn7.title = ""
                btn8.title = ""
                btn9.title = ""
                
                if(score2 == 2){
                    alert.messageText = "GANO EL JUGADOR " + String(turn)
                    alert.alertStyle = .critical
                    alert.runModal()
                    btn1.isEnabled = false
                    btn2.isEnabled = false
                    btn3.title = "O"
                    btn4.isEnabled = false
                    btn5.isEnabled = false
                    btn6.title = "O"
                    btn7.isEnabled = false
                    btn8.isEnabled = false
                    btn9.title = "O"
                  
                }
                
            }
            
            Player_Turn.stringValue = "Turno del jugador 1"
            turn = 1
        }
    }
    
    
    
    @IBAction func Reset(_ sender: Any) {
        turn = Int.random(in: 1...2)
        Player_Turn.stringValue = "Turno del jugador " + String(turn)
        btn1.title = ""
        btn2.title = ""
        btn3.title = ""
        btn4.title = ""
        btn5.title = ""
        btn6.title = ""
        btn7.title = ""
        btn8.title = ""
        btn9.title = ""
        
       
        
        btn1.isEnabled = true
        btn2.isEnabled = true
        btn3.isEnabled = true
        btn4.isEnabled = true
        btn5.isEnabled = true
        btn6.isEnabled = true
        btn7.isEnabled = true
        btn8.isEnabled = true
        btn9.isEnabled = true
        alert.alertStyle = .informational
        alert.messageText = "Comienza el juego de nuevo"
        alert.runModal()
        
    }
    
    
}
