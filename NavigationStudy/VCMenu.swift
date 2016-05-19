//
//  VCMenu.swift
//  NavigationStudy
//
//  Created by saumya on 19/05/16.
//  Copyright © 2016 saumya. All rights reserved.
//

import UIKit
class VCMenu: UIViewController {
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onScreenOne(sender:AnyObject){
        moveToViewControllerWithStoryboardID("id_VC_One")
    }
    @IBAction  func onScreenTwo(sender:AnyObject){
        moveToViewControllerWithStoryboardID("id_VC_Two")
    }
    @IBAction func onScreenThree(sender:AnyObject){
        moveToViewControllerWithStoryboardID("id_VC_Three")
    }
    private func moveToHome(){
        let homeVC = self.storyboard?.instantiateViewControllerWithIdentifier("sid_home")
        //self.navigationController?.pushViewController(homeVC!, animated: true)
        //self.navigationController?.showViewController(homeVC, sender: self)
        // iOS 8+
        self.showViewController(homeVC!, sender: self)
    }
    private func moveToHomeWithSegueID(){
        self.performSegueWithIdentifier("segue_toHome", sender: self)
    }
    private func moveToViewControllerWithStoryboardID(sid:String){
        let storyboard = UIStoryboard(name:"Main",bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier(sid)
        self.navigationController?.showViewController(vc, sender: self)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("prepareForSegue")
        if segue.identifier=="segue_toHome" {
            print("Segue : segue_toHome")
        }
    }
    @IBAction func comeBackToMenu(){
        print("VCMenu:comeBackToMenu")
    }
}
