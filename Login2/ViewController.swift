//
//  ViewController.swift
//  Login2
//
//  Created by Potluri Priyatham on 02/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblLogin:UILabel!
    @IBOutlet var lblUname:UILabel!
    @IBOutlet var txtUname:UITextField!
    @IBOutlet var lblPass:UILabel!
    @IBOutlet var txtPass:UITextField!
    @IBOutlet var btnLogin:UIButton!
    @IBOutlet var lblRes:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func getUname() -> String?{
        print("uname =",txtUname.text!)
        return txtUname.text
    }
    func getPass() -> String?{
        print("pass =",txtPass.text!)
        return txtPass.text
    }
    @IBAction func logMeIn(){
        let duname = "qwerty"
        let dpass = "asdf"
        let inputUname = getUname()
        let inputPass = getPass()
        if inputUname != duname{
            lblRes.text = "Wrong UserName"
            lblRes.textColor = UIColor.black
            print("lblRes =",lblRes.text!)
        }
        else if inputPass != dpass {
                lblRes.text = "Wrong Password"
                lblRes.textColor = UIColor.black
                print("lblRes =",lblRes.text!)
        }
        else if inputUname == duname && inputPass == dpass {
            lblRes.text = "Logged In Successfully"
            lblRes.textColor = UIColor.black
            print("lblRes =",lblRes.text!)
            let story = UIStoryboard(name: "Main", bundle: nil)
            let controller = story.instantiateViewController(identifier: "DashboardVC") as! DashboardVC
            let navigation = UINavigationController(rootViewController: controller)
//            let navigation2 = UINavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "DashboardVC") as! DashboardVC)
            view.addSubview(navigation.view)
            self.addChild(navigation)
            navigation.didMove(toParent: self)
        }
    }
}
