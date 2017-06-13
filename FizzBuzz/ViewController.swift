//
//  ViewController.swift
//  FizzBuzz
//
//  Created by KSlusarczyk on 6/7/17.
//  Copyright © 2017 KSlusarczyk. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    @IBOutlet weak var myNumberLabel: UILabel!
    var number = 0
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myNumberLabel.text = "\(number)"
    }
    
    @IBAction func longPress(_ sender: UILongPressGestureRecognizer)
    {
        number = 0
    }
    @IBAction func screenTapped(_ sender: UITapGestureRecognizer)
    {
        print("Screen Tapped")
        number += 1
        myNumberLabel.text = "\(number)"
        
        
        if(number % 3 == 0 && number % 5 == 0)
        {
            myNumberLabel.text = "FIZZBUZZ"
            myNumberLabel.font = myNumberLabel.font.withSize(75)
            view.backgroundColor = UIColor.purple
            
            
            
        }
        else if(number % 3 == 0)
        {
            myNumberLabel.text = "FIZZ"
            view.backgroundColor = UIColor.red
            myNumberLabel.font = myNumberLabel.font.withSize(100)
        }
        else if(number % 5 == 0)
        {
            myNumberLabel.text = "BUZZ"
            view.backgroundColor = UIColor.blue
            myNumberLabel.font = myNumberLabel.font.withSize(100)
        }
        else
        {
            view.backgroundColor = UIColor.black
            myNumberLabel.font = myNumberLabel.font.withSize(100)
        }
    }
}

