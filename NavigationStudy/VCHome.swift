//
//  ViewController.swift
//  NavigationStudy
//
//  Created by saumya on 18/05/16.
//  Copyright © 2016 saumya. All rights reserved.
//

import UIKit

class VCHome: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("prepareForSegue : Segue id ="+segue.identifier!)
        if segue.identifier=="seuge_toMenu" {
            print("prepareForSegue : Segue id = segue_toMenu")
        }
    }
    @IBAction func showMenu(){
        self.performSegueWithIdentifier("segue_toMenu", sender: self)
    }


}

