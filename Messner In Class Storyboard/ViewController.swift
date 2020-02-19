//
//  ViewController.swift
//  Messner In Class Storyboard
//
//  Created by Brad D. Messner on 1/29/20.
//  Copyright © 2020 Brad D. Messner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var nameField : String = "My name is <name> and I really <verb> a lot. Mr. Messner is my <adjective> favorite professor."
    
    var madlibTemplate : String = "Date: <date> Please excuse <name> who is far too <adjective> to attend <noun>."
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var outputText: UITextField!
    
     @IBAction func pressButton(_ sender: Any) {
       
        outputText.text = inputText.text
        outputText.text = nameField.replacingOccurrences(of: "<name>", with: inputText.text!)

        outputText.text = madlibTemplate.replacingOccurrences(of: "<name>", with: inputText.text!)
        
        
        // Note that you would need inputField.text.replacingOccurences(....) to copy from
        // a specific textfield instead of just variable contents
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

