//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Travis Farnsworth on 4/3/17.
//  Copyright © 2017 Travis Farnsworth. All rights reserved.
//var emojis = ["😘","😐","😎","😡","💜","😏","😢","😁","😳"]



class Emoji{
    var stringEmoji = ""
    var definition = ""
    var category = ""
    var creation = 0
    init(stringEmoji : String, definition: String, category : String, creation : Int) {
        self.stringEmoji = stringEmoji
        self.definition = definition
        self.category = category
        self.creation = creation
    }
    
}
