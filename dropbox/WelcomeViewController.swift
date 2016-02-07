//
//  WelcomeViewController.swift
//  dropbox
//
//  Created by Sam Huskins on 2/6/16.
//  Copyright © 2016 Sam Huskins. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let pageWidth = scrollView.bounds.width
        let pageHeight = scrollView.bounds.height
        
        scrollView.contentSize = CGSizeMake(3*pageWidth, pageHeight)
        scrollView.pagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        
        let view1 = UIImageView(frame: CGRectMake(0, 0, pageWidth, pageHeight))
        view1.image = UIImage(named:"welcome1")
        let view2 = UIImageView(frame: CGRectMake(pageWidth, 0, pageWidth, pageHeight))
        view2.image = UIImage(named:"welcome2")
        let view3 = UIImageView(frame: CGRectMake(2*pageWidth, 0, pageWidth, pageHeight))
        view3.image = UIImage(named:"welcome3")
        
        scrollView.addSubview(view1)
        scrollView.addSubview(view2)
        scrollView.addSubview(view3)
        
        scrollView.delegate = self
        pageControl.numberOfPages = 3
    }

    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.bounds.width)
        
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
