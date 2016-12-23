//
//  emojiCard.swift
//  EmojiCardStack
//
//  Created by Karen Fuentes on 12/20/16.
//  Copyright © 2016 Karen Fuentes. All rights reserved.
//

import UIKit

protocol  playingCard {
    var suit: String {get}
    var value: Int{get}
}

class EmojiCard: UIView, playingCard {

    @IBOutlet var views: UIView!
    @IBOutlet weak var cardValueRight: UILabel!
    @IBOutlet weak var cardSuitLabel: UILabel!
    @IBOutlet weak var cardValueLeft: UILabel!
    internal var value: Int
    internal var suit: String
//    var randomColor: UIColor {
//        let r = CGFloat(arc4random_uniform(254))
//        let g = CGFloat(arc4random_uniform(254))
//        let b = CGFloat(arc4random_uniform(254))
//        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1.0)
//    }
//    
    
    
    init(value:Int, suit:String, frame: CGRect) {
        self.suit = suit
        self.value = value
        super.init(frame: frame)
        if let contentView =  Bundle.main.loadNibNamed("EmojiCard", owner: self, options: nil)?.first as? UIView {
        self.addSubview(contentView)
        contentView.frame = self.bounds
        contentView.backgroundColor = UIColor(red: 0.9412, green: 1, blue: 0.898, alpha: 1.0)
        
       
        
        }
        


    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
 
            
        }
    }



