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
    @IBOutlet weak var buttonEmpty: UIButton!
    @IBOutlet var button: [UIButton]!

    var matrice : [[Int]] = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,0]]
    
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btn_1(_ sender: UIButton)
    {
        
    }

    @IBAction func btn_14(_ sender: UIButton) {
                                         
    }
    
     func generatore() {
         let number = Int.random(in: 10 ... 21)
         var x = 3
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

                if (rand1 < rand2 || rand1 % 2 != 0)
                {
                    matrice[x][y] = matrice[x][y - 1]
                    y = y - 1;
                    matrice[x][y] = 0;
                }
        }
    } 
}

