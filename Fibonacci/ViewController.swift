//
//  ViewController.swift
//  Fibonacci
//
//  Created by Brandon Miller on 7/4/18.
//  Copyright © 2018 SnotRocket. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var calcButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressCalcButton(_ sender: Any) {
        let n : Int = Int(inputTextField.text ?? "0") ?? 0
        if n == 0 {
            outputTextView.text = "Invalid"
            return
        }
        var output : String = ""
        for i in 1...n {
            print(recurseFibonacci(i))
            let newVal = recurseFibonacci(i)
            output += String(newVal) + ", "
        }
        outputTextView.text = output
    }
    func recurseFibonacci(_ n: Int) -> Int {
        if (n == 1) || (n == 2) {
            return 1
        }
        return recurseFibonacci(n - 1) + recurseFibonacci(n - 2)
    }
}

