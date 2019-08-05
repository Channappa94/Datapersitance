//
//  ViewController.swift
//  Datapersitance
//
//  Created by IMCS2 on 8/4/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var buttonOne: UIButton!

    var nameTwo: String = ""
    var numberTwo: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTwo = UserDefaults.standard.value(forKey: "OneName") as! String
        numberTwo = UserDefaults.standard.value(forKey: "OneNumber") as! String
        print(numberTwo)

        if (name.text == "" && number.text == ""){
            buttonOne.setTitle("save", for: .normal)
            name.text = ""
            number.text = ""
        }else{
            buttonOne.setTitle("update", for: .normal)
            name.text = nameTwo
            number.text = numberTwo
        }
        
 


        
        

    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        UserDefaults.standard.set(name.text!, forKey: "OneName")
        UserDefaults.standard.set(number.text!, forKey: "OneNumber")

        
    }
    


}

