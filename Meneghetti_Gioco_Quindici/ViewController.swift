//
//  ViewController.swift
//  Meneghetti_Gioco_Quindici
//
//  Created by MATTEO MENEGHETTI on 23/10/2019.
//  Copyright © 2019 MATTEO MENEGHETTI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button13: UIButton!
    @IBOutlet weak var button14: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var buttonEmpty: UIButton!


    var matrice : [[Int]] = [[]]
    var matriceButtons : [[UIButton]] = [[]]
    
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        matrice = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,0]]
        matriceButtons = [[button1,button2,button3,button4],[button5,button6,button7,button8],[button9,button10,button11,button12],[button13,button14,button15,buttonEmpty]]
    }
    
    @IBAction func btn_creaPartita(_ sender: UIButton) {
        for _ in 0...40{
        generatore()
        var x = 0
        var y = 0
        
        
        for _ in 0...3 {
            for _ in 0...3 {
                matriceButtons[x][y].setTitle(String(matrice[x][y]), for: .normal)
                y = y + 1
            }
            x = x + 1
            y = 0
        }
 
        
        }
    }
    func generatore() {
        Inizio();
         let number = Int.random(in: 10 ... 21)
        var x = matrice.index(0, offsetBy: Int) 
         var y = 3
      
        for _ in 0...number
        {
            var rand1 = Int.random(in: 1 ... 100)
            var rand2 = Int.random(in: 1 ... 100)
      
                if (x==0)
                {
                    matrice[x][y] = matrice[x + 1][y]
                    x = x + 1;
                    matrice[x][y] = 0;
                }
      
      
                if (y==0)
                {
                    matrice[x][y] = matrice[x][y + 1]
                    y = y + 1;
                    matrice[x][y] = 0;
                }
      
      
                if (rand1 >= rand2 || rand1 % 2 == 0)
                {
                    matrice[x][y] = matrice[x - 1][y]
                    x = x - 1;
                    matrice[x][y] = 0;
                }

                else
                {
                    matrice[x][y] = matrice[x][y - 1]
                    y = y - 1;
                    matrice[x][y] = 0;
                }
        }
    }
    
    func Inizio(){
        matrice = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,0]]
        var x = 0
        var y = 0
        
        
        for _ in 0...3 {
            for _ in 0...3 {
                matriceButtons[x][y].setTitle(String(matrice[x][y]), for: .normal)
                y = y + 1
            }
            x = x + 1
            y = 0
        }
    }
}

