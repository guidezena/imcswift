//
//  ViewController.swift
//  IMC
//
//  Created by Gabriel on 07/01/21.
//  Copyright © 2021 Guilherme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfWeigth: UITextField!
    @IBOutlet weak var tfHeigth: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    @IBOutlet weak var viResult: UILabel!
    
    var imc:Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func calculate(sender: Any) {
        if let Weigth = Double(tfWeigth.text!),let Heigth = Double(tfHeigth.text!){
            imc = Weigth / (Heigth * Heigth)
            showResults()
        }
    }
        func showResults (){
            var result:String = ""
            var image:String = ""
            switch imc {
                case 0..<16:
                    result = "Magreza"
                    image = "magreza"
                case 16..<18.5:
                    result = "Abaixo do peso"
                    image = "abaixo"
                case 18.5..<25:
                    result = "Peso ideal"
                    image = "ideal"
                case 25..<30:
                    result = "Sobrepeso"
                    image = "sobre"
                default:
                    result = "obesidade"
                    image = "obesidade"
        }
            lbResult.text = result
            ivResult.image = UIImage(named: image)
            viResult.isHidden = false
    }
    
}

