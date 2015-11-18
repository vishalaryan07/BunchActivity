//
//  ViewController.swift
//  BunchChat
//
//  Created by Vishal Ranjan on 11/10/15.
//  Copyright © 2015 Bunch. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIActionSheetDelegate {
    var appDelegate: AppDelegate!

    @IBOutlet weak var resetLinkView: UIView!
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var signupView: UIView!
    
    @IBOutlet weak var resetLinkTopFrame: NSLayoutConstraint!
    @IBOutlet weak var loginTopFrame: NSLayoutConstraint!
    @IBOutlet weak var signupTopFrame: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        self.navigationController?.navigationBarHidden = true
        self.resetLinkView.hidden = true;
        self.loginView.hidden = true;
        self.signupView.hidden = false;
        
        self.signupTopFrame.constant = self.view.frame.size.height/2;
        self.view.layoutIfNeeded();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cancelBtnClicked(sender: AnyObject) {
        print("cancel btn clicked !!!")
    }

    @IBAction func loginBtnClicked(sender: AnyObject) {
        print("login btn clicked !!!")
//        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
//        let homeVC = storyboard.instantiateViewControllerWithIdentifier("HomeVC")
//        self.presentViewController(homeVC, animated: true, completion: nil)
//        self.navigationController?.pushViewController(homeVC, animated:false)
        self.performSegueWithIdentifier("ShowTabbar", sender: self)
    }
    
    @IBAction func facebookBtnTapped(sender: AnyObject) {
        [self .showAlert("Facebook Login")]
    }
    @IBAction func twittterBtnTapped(sender: AnyObject) {
        [self .showAlert("Twitter Login")]
    }
    @IBAction func googleBtnTapped(sender: AnyObject) {
        [self .showAlert("Google Login")]
    }
    
    func showAlert(msg:String) {
        let alert = UIAlertController(title: msg, message: nil, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func goToLoginView(sender: AnyObject) {
        self.resetLinkView.hidden = true;
        self.loginView.hidden = false;
        self.signupView.hidden = true;
        
        self.loginTopFrame.constant = self.view.frame.size.height/2;
        self.view.layoutIfNeeded();
    }
    @IBAction func sendResetLinkBtnClicked(sender: AnyObject) {
        let alertController = UIAlertController(title: "Bunch Chat", message: "Password reset link sent successfully", preferredStyle:.Alert)
        let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            self.resetLinkView.hidden = true;
            self.loginView.hidden = false;
            self.signupView.hidden = true;
            
            self.loginTopFrame.constant = self.view.frame.size.height/2;
            self.view.layoutIfNeeded();
        }
        alertController.addAction(OKAction)
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func forgetPasswordBtnClicked(sender: AnyObject) {
        self.resetLinkView.hidden = false;
        self.loginView.hidden = true;
        self.signupView.hidden = true;
        
        self.resetLinkTopFrame.constant = self.view.frame.size.height/2;
        self.view.layoutIfNeeded();

    }
    
    
    
}

