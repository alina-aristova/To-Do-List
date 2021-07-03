//
//  ViewController.swift
//  calc
//
//  Created by Amberly Case on 7/3/21.
//  Copyright © 2021 Amberly Case. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberFromScren: Double = 0;
    var firstNum: Double = 0;
    var operation: Int = 0;
    var MathSign: Bool = false;
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        if MathSign == true {
            result.text = String(sender.tag);
            MathSign = false;
        }
        else{
            result.text = result.text! + String(sender.tag)
        }
        
        numberFromScren = Double(result.text!)!
    }
    
    @IBAction func Buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15{
            firstNum = Double(result.text!)!
            if sender.tag == 11 {
                
                 result.text = "/";
            }
            else if sender.tag == 12 {
                result.text = "*";
                
            }
            else if sender.tag == 13 {
                result.text = "-";
                
            }
            else if sender.tag == 14 {
                result.text = "+";
                
            }
            operation = sender.tag;
            MathSign = true;
        }
        else if sender.tag == 15 {
            if operation == 11 {
                result.text = String(firstNum / numberFromScren)
            }
            else if operation == 12 {
                result.text = String(firstNum * numberFromScren)
            }
            else if operation == 13 {
                result.text = String(firstNum - numberFromScren)
            }
            else if operation == 14 {
                result.text = String(firstNum + numberFromScren)
            }
        }
        else if sender.tag == 10 {
            result.text = ""
            firstNum = 0
            numberFromScren = 0
            operation = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

