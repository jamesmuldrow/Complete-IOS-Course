//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by James Muldrow on 3/3/18.
//  Copyright © 2018 James Muldrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = [
        "ball1", "ball2", "ball3", "ball4", "ball5"
    ]
    
    var randomBallNumber: Int = 0
    

    @IBOutlet weak var imageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        print("Button Pressed!")
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(4))
        
        imageView1.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }


}

