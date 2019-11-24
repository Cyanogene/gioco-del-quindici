//
//  ViewController.swift
//  Meneghetti_Gioco_Quindici
//
//  Created by MATTEO MENEGHETTI on 23/10/2019.
//  Copyright © 2019 MATTEO MENEGHETTI. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

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
    @IBOutlet weak var listaDifficoltà: UIPickerView!
    
    var matrice : [[Int]] = [[]]
    var matriceButtons : [[UIButton]] = [[]]
    var arr : [Int] = []
    let difficoltà = ["Medio","Difficile","Esperto"]
    var scelta = ""
    
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        matrice = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,0]]
        matriceButtons = [[button1,button2,button3,button4],[button5,button6,button7,button8],[button9,button10,button11,button12],[button13,button14,button15,buttonEmpty]]
        arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
        listaDifficoltà.dataSource = self
        listaDifficoltà.delegate = self
    }
    
    // Numero di colonne della PickerView (in questo caso una)
    func numberOfComponents(in listaDifficoltà: UIPickerView) -> Int {
        return 1
    }
    
    
    // Inserisce il contenuto dell'array alla PickerView
    func pickerView(_ listaDifficoltà: UIPickerView, titleForRow row : Int, forComponent component: Int) -> String? {
        return difficoltà[row]
    }
 
    
    // Numero di righe della PickerView
    func pickerView(_ listaDifficoltà: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return difficoltà.count
    }
    
    // Assegna ad una variabile la difficolà selezionata
    func pickerView(_ listaDifficoltà: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        scelta = difficoltà[row]
    }
    
    @IBAction func btn_creaPartita(_ sender: UIButton)
    {
        creaPartita()
        var x = 0
        var y = 0
        var i = 0
        
        for _ in 0...3
        {
            for _ in 0...3
            {
                if ( x != 3 || y != 3)
                {
                    matriceButtons[x][y].setTitle(String(arr[i]), for: .normal)
                    y = y + 1
                    i = i + 1
                }
            }
            x = x + 1
            y = 0
        }
    }
    
    // Matematicamente più mescolo l'array più il quadrato di gioco è difficile. Restituisco un numero che varia in base alla difficoltà
    func selezionaDifficoltà() -> Int
    {
        if ( scelta == "Medio")
        {
            return 2
        }
        else if ( scelta == "Difficile")
        {
            return 6
        }
        else
        {
            return 20
        }
    }
    
    // Scombina l'array per creare un quadrato di gioco risolvibile
    func creaPartita()
    {
        var x = Int.random(in: 0...14)
        var y = Int.random(in: 0...14)
        var appoggio = 0
        
        // Un quadrato è risolvibile se il numero di permutazioni eseguite è pari
        for _ in 0...selezionaDifficoltà()
        {
            appoggio = arr[y]
            arr[y] = arr[x]
            arr[x] = appoggio
            x = Int.random(in: 0...14)
            y = Int.random(in: 0...14)
        }
    }
    /*
    func generatore() {
        let number = Int.random(in: 10 ... 21)
        var x = 0
        var y = 0
        
        var finito = false
        
        while(!finito){
            
            if(matrice[x][y] == 0){
                finito = true
            }
            else{
                y = y + 1
            }
            if ( y == 4){
                y = 0
                x = x + 1
            }
            
        }
        
        for _ in 0...number
        {
            var rand1 = Int.random(in: 1 ... 100)
            var rand2 = Int.random(in: 1 ... 100)
      
                if (x==0)
                {
                    for _ in 0...2{
                    matrice[x][y] = matrice[x + 1][y]
                    x = x + 1;
                    matrice[x][y] = 0;
                    }
                }
      
      
                if (y==0)
                {
                    for _ in 0...2{
                    matrice[x][y] = matrice[x][y + 1]
                    y = y + 1;
                    matrice[x][y] = 0;
                    }
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
    */
}

