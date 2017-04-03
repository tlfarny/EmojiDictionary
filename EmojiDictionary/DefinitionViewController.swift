//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Travis Farnsworth on 4/3/17.
//  Copyright © 2017 Travis Farnsworth. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var creationLabel: UILabel!
    var emoji = Emoji(stringEmoji: "", definition: "", category: "", creation: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.stringEmoji
        definitionLabel.text = emoji.definition
        categoryLabel.text = "Categroy: \(emoji.category)"
        creationLabel.text = "Creation: \(emoji.creation)"
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
