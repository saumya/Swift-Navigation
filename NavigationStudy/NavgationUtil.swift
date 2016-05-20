//
//  NavgationUtil.swift
//  NavigationStudy
//
//  Created by saumya on 19/05/16.
//  Copyright © 2016 saumya. All rights reserved.
//

//import Foundation
import UIKit

public class NavigationUtil {
    
    private var _vc:UIViewController
    
    init(_ withVC:UIViewController) {
        print("NavigationUtil : init")
        self._vc = withVC
    }
    
    // Ref :
    // self.navigationController?.pushViewController(homeVC!, animated: true)
    // self.navigationController?.showViewController(homeVC, sender: self)
    
    // Takes to a new ViewController, displaying backbutton
    public func moveToViewControllerWithStoryboardID(sid:String,withStoryboardName:String){
        let storyboard = UIStoryboard(name:withStoryboardName,bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier(sid)
        //self.navigationController?.showViewController(vc, sender: self)
        self._vc.navigationController?.showViewController(vc, sender: self._vc)
    }
    
    // Takes to a new ViewController, no back button
    public func moveToViewControllerWithStoryboardIdWithoutBackButton(sid:String,withStoryboardName:String){
        let storyboard = UIStoryboard(name:withStoryboardName,bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier(sid)
        // Hide-ing back button in new view controller
        vc.navigationItem.hidesBackButton = true
        //self.navigationController?.showViewController(vc, sender: self)
        self._vc.navigationController?.showViewController(vc, sender: self._vc)
    }
    // Segue
    public func doSegue(vc:UIViewController, withId:String){
        vc.performSegueWithIdentifier(withId, sender: vc)
    }
}