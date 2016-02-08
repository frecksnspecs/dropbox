//
//  FavoritesExistingViewController.swift
//  dropbox
//
//  Created by Sam Huskins on 2/7/16.
//  Copyright © 2016 Sam Huskins. All rights reserved.
//

import UIKit

class FavoritesExistingViewController: UIViewController {

    @IBOutlet weak var favoritesImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "refreshList:", name:"refresh", object: nil)

        // Do any additional setup after loading the view.
    }
    
    func refreshList(notification: NSNotification){
        
        print("sending image update")
        //you can change your UIImageView's Image here.
        favoritesImageView.image = UIImage(named:"favorited")
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
