//
//  FavoriteFileViewController.swift
//  dropbox
//
//  Created by Sam Huskins on 2/7/16.
//  Copyright © 2016 Sam Huskins. All rights reserved.
//

import UIKit

class FavoriteFileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onFavSelected(sender: UIButton) {
        NSNotificationCenter.defaultCenter().postNotificationName("refresh", object: nil)

        if sender.selected == true {
            sender.selected = false
            
        } else {
            sender.selected = true
        }
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
