//
//  ViewController.swift
//  ProjectNotification
//
//  Created by Elena Goroshko on 11/19/17.
//  Copyright © 2017 Elena Goroshko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ibLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(notificationGot(_:)),
                                               name: NSNotification.Name(rawValue: "NotificationSend"), object: nil)
    }

    @IBAction func resetPressed(_ sender: UIButton) {
        ibLabel.text = "Waiting to be notified..."
    }
    @objc func notificationGot(_ notification: Notification) {
        ibLabel.text = "I've got a notification"
    }
}
