//
//  ViewController.swift
//  BillSpliter
//
//  Created by Raul Armas Santiago on 10/8/19.
//  Copyright © 2019 Sento40. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalPerson: UILabel!
    @IBOutlet weak var totalGeneral: UITextField!
    @IBOutlet weak var countPerson: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcularCuentaAction(_ sender: Any) {
        
        guard let total = totalGeneral.text, let persons = countPerson.text else {
            return
        }
        
        if total == "" ||  persons == "" {
            
            print("Uno de los datos esta vacio" )
        } else {
            var totalGral = Int(total)!
            var numPer = Int(persons)!
            
            let result = totalGral/numPer
            totalPerson.text = String(result)
        }
        
        
        /*
        if let total = totalGeneral.text, let persons = countPerson.text {
            //var totalGral = Int(total)!
            //var numPer = Int(persons)!
            print("Hola")
            //let result = totalGral/numPer
            //totalPerson.text = String(result)
        }else{
            totalPerson.text = "Llenar todos los campos"
        }*/
        
    }
    
    
    
    
}

