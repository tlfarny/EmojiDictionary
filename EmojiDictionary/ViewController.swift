//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Travis Farnsworth on 4/3/17.
//  Copyright © 2017 Travis Farnsworth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = [Emoji(stringEmoji: "😘", definition: "Face blowing a kiss", category: "Smiley", creation: 2009)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji(stringEmoji: "😘", definition: "Face blowing a kiss", category: "Smiley", creation: 2009)
        let emoji2 = Emoji(stringEmoji: "😐", definition: "Neutral Face", category: "Smiley", creation: 2011 )
        let emoji3 = Emoji(stringEmoji: "😎", definition: "A smiley with sunglasses", category: "Smiley", creation: 2010)
        let emoji4 = Emoji(stringEmoji: "😡", definition: "Pouting face", category: "Smiley", creation: 2009)
        let emoji5 = Emoji(stringEmoji: "💜", definition: "Purple Heart", category: "Symbols", creation: 2009)
        let emoji6 = Emoji(stringEmoji: "😏", definition: "Smirking face", category: "Smiley", creation: 2011)
        let emoji7 = Emoji(stringEmoji: "😢", definition: "Crying Face", category: "Smiley", creation: 2009)
        let emoji8 = Emoji(stringEmoji: "😁", definition: "Grinning face with smiling eyes", category: "Smiley", creation: 2009)
        let emoji9 = Emoji(stringEmoji: "😳", definition: "Flushed face", category: "Smiley", creation: 2013)
        return[emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

