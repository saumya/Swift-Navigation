//
//  ViewController.swift
//  NavigationStudy
//
//  Created by saumya on 18/05/16.
//  Copyright © 2016 saumya. All rights reserved.
//

import UIKit

class VCUserHome: UIViewController {
    
    
   var navUtil:NavigationUtil?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("VCUserHome : viewDidLoad")
        
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
    
    @IBAction func showMenu(){
        print("VCUserHome : showMenu : ")
        self.navUtil!.moveToViewControllerWithStoryboardID("sid_Menu",withStoryboardName: "Main")
    }
    
    /*
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
        
        //vc.navigationItem.hidesBackButton = true // Hide-ing back button in new view controller
        
        //self.navigationController?.showViewController(vc, sender: self)
        //self.navigationController?.pushViewController(vc, animated: true)
        self.showViewController(vc, sender: self) // iOS 8+
        //
        //let navUtil:NavigationUtil = NavigationUtil(self)
    }
    */
    


}

