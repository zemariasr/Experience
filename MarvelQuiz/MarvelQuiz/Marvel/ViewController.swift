//
//  ViewController.swift
//  MarvelQuiz
//
//  Created by José Maria Só Rodrigues on 05/11/2018.
//  Copyright © 2018 ZM FIGHTER SYSTEM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfName: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
   

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueHero" {
        tfName.resignFirstResponder()
        let vc = segue.destination as! HeroesTableViewController
        vc.name = tfName.text
    }
    }
    
    
}

