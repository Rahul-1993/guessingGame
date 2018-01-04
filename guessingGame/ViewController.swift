//
//  ViewController.swift
//  guessingGame
//
//  Created by Rahul Avale on 9/9/17.
//  Copyright © 2017 Rahul Avale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessText: UITextField!
    @IBOutlet weak var displayAnswer: UILabel!
    
    @IBAction func guessButton(_ sender: Any) {
        let randomNumber = arc4random_uniform(5)
        let guessedAnswer = guessText.text
        if String(randomNumber) == guessedAnswer {
            displayAnswer.text = "You guessed it right! It was \(randomNumber)"
        } else {
            displayAnswer.text = "You guessed it wrong! It was \(randomNumber)"
        }
        
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

