//
//  SettingsNewUserViewController.swift
//  dropbox
//
//  Created by Sam Huskins on 2/6/16.
//  Copyright © 2016 Sam Huskins. All rights reserved.
//

import UIKit

class SettingsNewUserViewController: UIViewController {
    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var settingsImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsScrollView.contentSize = settingsImageView.image!.size

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
