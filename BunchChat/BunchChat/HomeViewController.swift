//
//  HomeViewController.swift
//  BunchChat
//
//  Created by Vishal Ranjan on 17/10/15.
//  Copyright © 2015 Bunch. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,ActivityHeaderViewDelegate {
    var activityHeaderView : ActivityTableHeaderView!
    @IBOutlet weak var activityTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.redColor()
//        self.navigationController?.navigationBarHidden = false;
        let nib = UINib.init(nibName: "ActivityTableViewCell", bundle: nil)
        self.activityTableView.registerNib(nib, forCellReuseIdentifier: "Cell")
//        self.activityTableView.registerClass(ActivityTableViewCell.self, forCellReuseIdentifier: "Cell")
        activityHeaderView = NSBundle.mainBundle().loadNibNamed("ActivityTableHeaderView", owner: self, options: nil)[0] as! ActivityTableHeaderView
        activityHeaderView.backgroundColor = UIColor.redColor()
        activityHeaderView.delegate = self
        self.activityTableView.tableHeaderView = activityHeaderView
    }

    //MARK: - ActivityHeaderViewDelegate Methods
    func profileBtnTapped() {
//        self.performSegueWithIdentifier("ActivityVC", sender: self)
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        let userVc = storyboard.instantiateViewControllerWithIdentifier("UserVC")
//        self.presentViewController(userVc, animated: true, completion: nil)
        self.navigationController?.pushViewController(userVc, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Tableview Delegate Methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:ActivityTableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell")! as! ActivityTableViewCell
        cell.activityImageView.backgroundColor = UIColor .redColor()
        cell.activityNameLabel?.text  = "Demo"
        return cell;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60;
    }
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
