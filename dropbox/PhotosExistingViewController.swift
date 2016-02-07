//
//  PhotosExistingViewController.swift
//  dropbox
//
//  Created by Sam Huskins on 2/6/16.
//  Copyright © 2016 Sam Huskins. All rights reserved.
//

import UIKit

class PhotosExistingViewController: UIViewController {

    @IBOutlet weak var photosImageView: UIImageView!
    @IBOutlet weak var photosScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photosScrollView.contentSize = photosImageView.image!.size

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
