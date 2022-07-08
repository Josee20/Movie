//
//  ViewController.swift
//  Movie
//
//  Created by 이동기 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var frozenKingdom: UIImageView!
    @IBOutlet weak var withGod: UIImageView!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var randomPoster: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        frozenKingdom.layer.cornerRadius = 60
        frozenKingdom.layer.borderWidth = 15
        frozenKingdom.layer.borderColor = UIColor.yellow.cgColor
        
        withGod.layer.cornerRadius = 50
        withGod.layer.borderWidth = 10
        withGod.layer.borderColor = UIColor.red.cgColor
        
        avatar.layer.cornerRadius = 40
        avatar.layer.borderWidth = 5
        avatar.layer.borderColor = UIColor.blue.cgColor
        
        randomPoster.image = UIImage(named: "부산행")
        
        
        
    }

    @IBAction func changePoster(_ sender: UIButton) {
        randomPoster.image = UIImage(named: "Poster\(Int.random(in: 1...4))")
    }
    

}

