//
//  SendNotificationViewController.swift
//  ProjectNotification
//
//  Created by Elena Goroshko on 11/19/17.
//  Copyright © 2017 Elena Goroshko. All rights reserved.
//

import UIKit

class SendNotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sendNotificationPressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "NotificationSend"), object: nil)
    }
}
