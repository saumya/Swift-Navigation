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
        print("VCHome : viewDidLoad")
        //showMenu()
        //showUserHome()
        moveToVC("sid_User", withStoryBoardName: "User")
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
    @IBAction func showMenu(){
        print("VCHome : showMenu")
        self.performSegueWithIdentifier("segue_toMenu", sender: self)
    }
    private func showUserHome(){
        moveToViewControllerWithStoryboardID("sid_user_home")
    }
    
    private func moveToViewControllerWithStoryboardID(sid:String){
        let storyboard = UIStoryboard(name:"Main",bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier(sid)
        self.navigationController?.showViewController(vc, sender: self)
    }
    private func moveToVC(sid:String,withStoryBoardName:String){
        let storyboard = UIStoryboard(name:withStoryBoardName,bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier(sid)
        self.navigationController?.showViewController(vc, sender: self)
    }
    


}

