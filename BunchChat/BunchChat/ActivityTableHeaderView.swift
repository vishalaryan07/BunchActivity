//
//  ActivityTableHeaderView.swift
//  BunchChat
//
//  Created by Vishal Ranjan on 11/16/15.
//  Copyright © 2015 Bunch. All rights reserved.
//

import UIKit

protocol ActivityHeaderViewDelegate {
    func profileBtnTapped()
}

class ActivityTableHeaderView: UIView {
    
    var delegate : ActivityHeaderViewDelegate?

    @IBAction func profileBtnClicked(sender: AnyObject) {
        delegate?.profileBtnTapped()
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
