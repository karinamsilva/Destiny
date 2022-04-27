//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var storyBrain = StoryBrain()
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        guard let number = sender.currentTitle else { return }
        storyBrain.nextStory(userChoice: number)
        upDate()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upDate()
        


    }
    func upDate() {
        storyLabel.text = storyBrain.setText()
        choice1Button.setTitle(storyBrain.setQuest1(), for: .normal)
        choice2Button.setTitle(storyBrain.setQuest2(), for: .normal)
        
    }
    
}
    

