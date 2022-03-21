//
//  ViewController.swift
//  TestStoryBoardRecipe
//
//  Created by Anil Thomas on 3/17/22.
//

import UIKit

class ViewController: UIViewController {
    var nm = NetworkManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonPress(_ sender: UIButton) {
        nm.getUrl()
    }
    
    
}

