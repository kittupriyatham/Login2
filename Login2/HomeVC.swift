//
//  HomeVC.swift
//  Login2
//
//  Created by Potluri Priyatham on 03/09/22.
//
import UIKit

class HomeVC: UIViewController {
    @IBOutlet var btnLogin:UIButton!
    @IBOutlet var btnSignup:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func login(){
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(identifier: "LoginVC") as! LoginVC
        let navigation = UINavigationController(rootViewController: controller)
        view.addSubview(navigation.view)
        self.addChild(navigation)
        navigation.didMove(toParent: self)
    }
    @IBAction func signup(){
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(identifier: "SignupVC") as! SignupVC
        let navigation = UINavigationController(rootViewController: controller)
        view.addSubview(navigation.view)
        self.addChild(navigation)
        navigation.didMove(toParent: self)
    }
    
}
