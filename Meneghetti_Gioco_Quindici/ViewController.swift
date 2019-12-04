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
    @IBOutlet weak var lbl_vittoria: UILabel!
    @IBOutlet var label_test: UILabel!
    
    var matrice : [[Int]] = [[]]
    var matriceButtons : [[UIButton]] = [[]]
    var matriceImmagini : [[UIImage]] = [[]]
    var arrImg : [UIImage] = []
    var arr : [Int] = []
    let difficoltà = ["Medio","Difficile","Esperto","Impossibile"]
    var scelta = ""
    
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Reset()
        listaDifficoltà.dataSource = self
        listaDifficoltà.delegate = self
        listaDifficoltà.setValue(UIColor.white, forKey: "textColor")
        BloccaPulsanti()
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
    
    // Assegna ad una variabile la difficoltà selezionata
    func pickerView(_ listaDifficoltà: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        scelta = difficoltà[row]
    }
    
    @IBAction func btn_1(_ sender: UIButton) {
        if(Controllo(x: 0, y: 0))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
    }
    
    @IBAction func btn_2(_ sender: UIButton) {
        if(Controllo(x: 0, y: 1))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
    }
    @IBAction func btn_3(_ sender: UIButton) {
        if(Controllo(x: 0, y: 2))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
    }
    
    @IBAction func btn_4(_ sender: UIButton) {
        if(Controllo(x: 0, y: 3))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
    }
    
    @IBAction func btn_5(_ sender: UIButton) {
        if(Controllo(x: 1, y: 0))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
    }
    
    @IBAction func btn_6(_ sender: UIButton) {
        if(Controllo(x: 1, y: 1))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
    }
    
    @IBAction func btn_7(_ sender: UIButton) {
        if(Controllo(x: 1, y: 2))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
    }
    
    @IBAction func btn_8(_ sender: UIButton) {
        if(Controllo(x: 1, y: 3))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
    }
    
    @IBAction func btn_9(_ sender: UIButton) {
        if(Controllo(x: 2, y: 0))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
    }
    
    @IBAction func btn_10(_ sender: UIButton) {
        if(Controllo(x: 2, y: 1))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
    }
    
    @IBAction func btn_11(_ sender: UIButton) {
        if(Controllo(x: 2, y: 2))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
    }
    
    @IBAction func btn_12(_ sender: UIButton) {
        if(Controllo(x: 2, y: 3))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
    }
    
    @IBAction func btn_13(_ sender: UIButton) {
        if(Controllo(x: 3, y: 0))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
        
    }
    @IBAction func btn_14(_ sender: UIButton) {
        if(Controllo(x: 3, y: 1))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
        
    }
    @IBAction func btn_15(_ sender: UIButton) {
        if(Controllo(x: 3, y: 2))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
        
    }
    
    @IBAction func btn_empty(_ sender: UIButton) {
        if(Controllo(x: 3, y: 3))
        {
            Vittoria()
        }
        else
        {
            sender.shake()
        }
    }
    
    @IBAction func btn_creaPartita(_ sender: UIButton)
    {
        CreaPartita()
        var x = 0
        var y = 0
        var i = 0
        for _ in 0...3
        {
            for _ in 0...3
            {
                matriceButtons[x][y].setTitle(String(arr[i]), for: .normal)
                matriceButtons[x][y].setImage(matriceImmagini[x][y], for: .normal)
                y = y + 1
                i = i + 1
            }
            x = x + 1
            y = 0
        }
        
        SbloccaPulsanti()
        lbl_vittoria.text = ""
    }
    
    // Matematicamente più mescolo l'array più la griglia di gioco è difficile da risolvere. Restituisco una serie di permutazioni che varia in base alla difficoltà
    func SelezionaDifficoltà() -> Int
    {
        if ( scelta == "Difficile")
        {
            return 6
        }
        else if ( scelta == "Esperto")
        {
            return 10
        }
        else if ( scelta == "Impossibile")
        {
            return 5000
        }
        else
        {
            return 2
        }
    }
    
    
    // Scombina l'array per creare un quadrato di gioco risolvibile
    func CreaPartita()
    {
        Reset()
        var x = Int.random(in: 0...14)
        var y = Int.random(in: 0...14)
        var appoggio = 0
        var appoggioImg : UIImage
        
        // Un quadrato è risolvibile se il numero di permutazioni eseguite è pari
        for _ in 0...SelezionaDifficoltà()
        {
            appoggio = arr[y]
            arr[y] = arr[x]
            arr[x] = appoggio
            
            appoggioImg = arrImg[y]
            arrImg[y] = arrImg[x]
            arrImg[x] = appoggioImg
            
            x = Int.random(in: 0...14)
            y = Int.random(in: 0...14)
        }
        ScombinaMatrice()
    }

    // Aggiunge gli elementi dell'array scombinato in una matrice
    func ScombinaMatrice()
    {
        var x = 0
        var y = 0
        var i = 0
        for _ in 0...3
        {
            for _ in 0...3
            {
                matrice[x][y] = arr[i]
                matriceImmagini[x][y] = arrImg[i]
                y = y + 1
                i = i + 1
            }
            x = x + 1
            y = 0
        }
    }
    
    // Data la posizione del pulsante (X,Y) ritorna TRUE se il pulsante si può spostare su una casella vuota, FALSE se non può
    func Controllo(x : Int, y : Int) -> Bool
    {
        var appoggio : UIImage
        if (x + 1 <= 3 && matrice[x + 1][y] == 0)
        {
            matrice[x+1][y] = matrice[x][y]
            matrice[x][y] = 0
            
            appoggio = matriceImmagini[x+1][y]
            matriceImmagini[x+1][y] = matriceImmagini[x][y]
            matriceImmagini[x][y] = appoggio
            
            matriceButtons[x][y].setTitle(String(matrice[x][y]),for: .normal)
            matriceButtons[x+1][y].setTitle(String(matrice[x+1][y]),for: .normal)
            
            matriceButtons[x][y].setImage(matriceImmagini[x][y], for: .normal)
            matriceButtons[x+1][y].setImage(matriceImmagini[x+1][y], for: .normal)
            return true
        }
        
        if (x - 1 >= 0 && matrice[x - 1][y] == 0)
        {
            matrice[x-1][y] = matrice[x][y]
            matrice[x][y] = 0
            
            appoggio = matriceImmagini[x-1][y]
            matriceImmagini[x-1][y] = matriceImmagini[x][y]
            matriceImmagini[x][y] = appoggio
            
            matriceButtons[x][y].setTitle(String(matrice[x][y]),for: .normal)
            matriceButtons[x-1][y].setTitle(String(matrice[x-1][y]),for: .normal)
            
            matriceButtons[x][y].setImage(matriceImmagini[x][y], for: .normal)
            matriceButtons[x-1][y].setImage(matriceImmagini[x-1][y], for: .normal)
            return true
        }
        
        if (y + 1 <= 3 && matrice[x][y + 1] == 0)
        {
            matrice[x][y+1] = matrice[x][y]
            matrice[x][y] = 0
            
            appoggio = matriceImmagini[x][y+1]
            matriceImmagini[x][y+1] = matriceImmagini[x][y]
            matriceImmagini[x][y] = appoggio
            
            matriceButtons[x][y].setTitle(String(matrice[x][y]),for: .normal)
            matriceButtons[x][y+1].setTitle(String(matrice[x][y+1]),for: .normal)

            matriceButtons[x][y].setImage(matriceImmagini[x][y], for: .normal)
            matriceButtons[x][y+1].setImage(matriceImmagini[x][y+1], for: .normal)
            return true
        }
        
        if (y - 1 >= 0 && matrice[x][y - 1] == 0)
        {
            matrice[x][y-1] = matrice[x][y]
            matrice[x][y] = 0
            
            appoggio = matriceImmagini[x][y-1]
            matriceImmagini[x][y-1] = matriceImmagini[x][y]
            matriceImmagini[x][y] = appoggio

            matriceButtons[x][y].setTitle(String(matrice[x][y]),for: .normal)
            matriceButtons[x][y-1].setTitle(String(matrice[x][y-1]),for: .normal)

            matriceButtons[x][y].setImage(matriceImmagini[x][y], for: .normal)
            matriceButtons[x][y-1].setImage(matriceImmagini[x][y-1], for: .normal)
            return true
        }
        return false
    }

    func Vittoria()
    {
        if (ControlloOrdine())
        {
            BloccaPulsanti()
            lbl_vittoria.text = "HAI VINTO!"
        }
    }
    
    // Blocca tutti i pulsanti
    func BloccaPulsanti()
    {
        var x = 0
        var y = 0
        for _ in 0...3
        {
            for _ in 0...3
            {
                matriceButtons[x][y].isEnabled = false
                y = y + 1
            }
            x = x + 1
            y = 0
        }
    }
    
    // Sblocca tutti i pulsanti
    func SbloccaPulsanti()
    {
        var x = 0
        var y = 0
        for _ in 0...3
        {
            for _ in 0...3
            {
                matriceButtons[x][y].isEnabled = true
                y = y + 1
            }
            x = x + 1
            y = 0
        }
    }
    
    // Controlla se la griglia è in ordine
    func ControlloOrdine() -> Bool
    {
        var x = 0
        var y = 0
        var i = 1
        for _ in 0...3
        {
            for _ in 0...3
            {
                if (x != 3 || y != 3)
                {
                    if (matrice[x][y] != i)
                    {
                        return false
                    }
                }
                    y = y + 1
                    i = i + 1
            }
            x = x + 1
            y = 0
        }
        return true
    }
    
    // Svuota e riempie tutte le matrici / array alla situazione iniziale
    func Reset()
    {
        matrice = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,0]]
        matriceButtons = [[button1,button2,button3,button4],[button5,button6,button7,button8],[button9,button10,button11,button12],[button13,button14,button15,buttonEmpty]]
        arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0]
        matriceImmagini = [[UIImage(named: "1.png")!,UIImage(named: "2.png")!,UIImage(named: "3.png")!,UIImage(named: "4.png")!],
        [UIImage(named: "5.png")!,UIImage(named: "6.png")!,UIImage(named: "7.png")!,UIImage(named: "8.png")!],
        [UIImage(named: "9.png")!,UIImage(named: "10.png")!,UIImage(named: "11.png")!,UIImage(named: "12.png")!],
        [UIImage(named: "13.png")!,UIImage(named: "14.png")!,UIImage(named: "15.png")!,UIImage(named: "sfondo.png")!]]
        arrImg = [UIImage(named: "1.png")!,UIImage(named: "2.png")!,UIImage(named: "3.png")!,UIImage(named: "4.png")!,UIImage(named: "5.png")!,UIImage(named: "6.png")!,UIImage(named: "7.png")!,UIImage(named: "8.png")!,UIImage(named: "9.png")!,UIImage(named: "10.png")!,UIImage(named: "11.png")!,UIImage(named: "12.png")!,UIImage(named: "13.png")!,UIImage(named: "14.png")!,UIImage(named: "15.png")!,UIImage(named: "sfondo.png")!]
    }
}
