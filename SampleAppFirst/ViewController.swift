//
//  ViewController.swift
//  SampleAppFirst
//
//  Created by Adem Hadrovic on 3/16/18.
//  Copyright © 2018 SSST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber : Double = 0;
    var secondNumber : Double = 0;
    var result : Double = 0;
    
    @IBOutlet weak var input1Text: UITextField!
    @IBOutlet weak var input2Text: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttons(_ sender: UIButton) {
    
        firstNumber = Double(input1Text.text!)!;
        secondNumber = Double(input2Text.text!)!;
        
        switch sender.tag{
        case 1:
            result = firstNumber + secondNumber;
            break;
        case 2:
            result = firstNumber - secondNumber;
            break;
        case 3:
            result = firstNumber * secondNumber;
            break;
        case 4:
            result = firstNumber / secondNumber;
            break;
        default:
            result = 0;
            firstNumber = 0;
            secondNumber = 0;
            break;
        }
        resultLabel.text = String(result);
    
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

