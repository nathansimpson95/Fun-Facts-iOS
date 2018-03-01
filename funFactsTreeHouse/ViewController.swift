//
//  ViewController.swift
//  funFactsTreeHouse
//
//  Created by Nathan Simpson on 25/10/17.
//  Copyright © 2017 Nathan Simpson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var nextFactButton: UIButton!
    
    let factProvider = factProviderModel()
    let colourProvider = backgroundColourProvider()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factProvider.randomFact()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    
    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        let randomColour = colourProvider.randomColour()
        view.backgroundColor = randomColour
        nextFactButton.tintColor = randomColour
        
    }
    
}
