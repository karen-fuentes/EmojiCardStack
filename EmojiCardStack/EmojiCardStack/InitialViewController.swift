//
//  InitialViewController.swift
//  EmojiCardStack
//
//  Created by Karen Fuentes on 12/22/16.
//  Copyright © 2016 Karen Fuentes. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    self.view.backgroundColor = .white
    self.title = "CREATE A DECK 👾"
    addingLabel()
    settingUpDrawCard()
    settingUpRemoveAllButton()
    settingUpShowStackButton()
    settingUpRemoveRandomCardButton()
    
    }
    
    
    func addingLabel() {
        let initialLabel = UILabel()
        self.view.addSubview(initialLabel)
        initialLabel.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
        initialLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        initialLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        initialLabel.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3),
        initialLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.6)
        ].map{$0.isActive = true}
        initialLabel.backgroundColor = UIColor(red: 1, green: 0.949, blue: 0.898, alpha: 1.0)
        initialLabel.textColor = .gray
        initialLabel.text = "This Deck is Empty 💔"
        initialLabel.textAlignment = .center
        
    }
    func didPressSegueButton(sender: UIButtonType) {
        print("Did press button")
        
        // 1. create our destination view controller
        let cardVC = CardViewController()
        cardVC.view.backgroundColor  = .white
        
        // 2. move to the destination view controller
        //self.present(greenViewController, animated: true, completion: nil)
        //this will present a new view controller modally(new full screen over the existing), but we want the navVC to manage our view Controllers
        if let navVC = self.navigationController {
            navVC.pushViewController(cardVC, animated: true)
            
        }
        
    }

    
    //MARK: SETTING UP BUTTON IN THE VIEW
    func settingUpDrawCard() {
        let drawCardButton:UIButton = UIButton(type: UIButtonType.system)
        self.view.addSubview(drawCardButton)
        drawCardButton.translatesAutoresizingMaskIntoConstraints = false
        drawCardButton.setTitle("DrawCard", for: .normal)
        let _ = [
            drawCardButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            drawCardButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -40)
            ].map{$0.isActive = true
        }
          drawCardButton.addTarget(self, action: #selector(didPressSegueButton(sender:)), for: .touchUpInside)
    }
    
    func settingUpRemoveRandomCardButton() {
        let removeCardButton: UIButton = UIButton(type: UIButtonType.system)
        self.view.addSubview(removeCardButton)
        removeCardButton.translatesAutoresizingMaskIntoConstraints = false
        removeCardButton.setTitle("Remove Card", for: .normal)
        let _ = [
            removeCardButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            removeCardButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10)
            ].map{$0.isActive = true }
    }
    func settingUpShowStackButton() {
        let showStackButton : UIButton = UIButton(type: UIButtonType.system)
        self.view.addSubview(showStackButton)
        showStackButton.translatesAutoresizingMaskIntoConstraints = false
        showStackButton.setTitle("Show Stack", for: .normal)
        
        let _ = [
            showStackButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            showStackButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -40)
            ].map{$0.isActive = true}
    }
    
    func settingUpRemoveAllButton(){
        let removeAllButton: UIButton = UIButton(type: UIButtonType.system)
        self.view.addSubview(removeAllButton)
        removeAllButton.translatesAutoresizingMaskIntoConstraints = false
        removeAllButton.setTitle("Remove All", for: .normal)
        
        let _ = [
            removeAllButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            removeAllButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10)
            ].map{$0.isActive = true}
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
