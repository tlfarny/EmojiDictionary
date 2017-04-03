//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Travis Farnsworth on 4/3/17.
//  Copyright © 2017 Travis Farnsworth. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "NO EMOJI"
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        if emoji=="💜" {
            definitionLabel.text = "This is the best color for a heart"
        }
        if emoji=="😎" {
            definitionLabel.text = "A dude with sunglasses"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
