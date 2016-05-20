//
//  ViewController.swift
//  NavigationStudy
//
//  Created by saumya on 18/05/16.
//  Copyright © 2016 saumya. All rights reserved.
//

import UIKit

class VCScreenOne: UIViewController {
    
    
   var navUtil:NavigationUtil?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("VCScreenOne : viewDidLoad")
        
        self.navUtil = NavigationUtil(self)
        //self.navUtil?.moveToViewControllerWithStoryboardID("sid_User", withStoryboardName: "User")
        //self.navUtil?.moveToViewControllerWithStoryboardIdWithoutBackButton("sid_User", withStoryboardName: "User")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("VCHome : didReceiveMemoryWarning")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("VCHome : prepareForSegue : Segue id ="+segue.identifier!)
        if segue.identifier=="seuge_toMenu" {
            print("prepareForSegue : Segue id = segue_toMenu")
        }
    }
    
    @IBAction func showHome(){
        print("VCUserHome : showMenu : ")
        self.navUtil!.moveToViewControllerWithStoryboardID("sid_home",withStoryboardName: "Main")
    }


}

