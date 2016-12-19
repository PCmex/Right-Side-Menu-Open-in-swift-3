//
//  ViewController.swift
//  RIghtSideMenuOpen
//
//  Created by Parth Changela on 13/11/16.
//  Copyright © 2016 Parth Changela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnMenuOpen: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        revealViewController().rightViewRevealWidth = 250
        btnMenuOpen.target = revealViewController()
        btnMenuOpen.action = #selector(SWRevealViewController.rightRevealToggle(_:))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

