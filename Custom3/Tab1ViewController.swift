//
//  Tab1ViewController.swift
//  Custom3
//
//  Created by Jason Lee on 9/6/19.
//  Copyright © 2019 Jason Lee. All rights reserved.
//

import UIKit

class Tab1ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet var scrollViews : [UIScrollView]!
    @IBOutlet var scrollView0: UIScrollView!
    @IBOutlet var scrollView1: UIScrollView!
    @IBOutlet var scrollView2: UIScrollView!
    @IBOutlet var scrollView3: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for scrollView in self.scrollViews {
            scrollView.delegate = self;
        }
    }
    
    // called on start of dragging (may require some time and or distance to move)
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        if scrollView == scrollView0 {
            scrollView1.isScrollEnabled = false
            scrollView2.isScrollEnabled = false
            scrollView3.isScrollEnabled = false
        }
        if scrollView == scrollView1 {
            scrollView0.isScrollEnabled = false
            scrollView2.isScrollEnabled = false
            scrollView3.isScrollEnabled = false
        }
        if scrollView == scrollView2 {
            scrollView0.isScrollEnabled = false
            scrollView1.isScrollEnabled = false
            scrollView3.isScrollEnabled = false
        }
        if scrollView == scrollView3 {
            scrollView0.isScrollEnabled = false
            scrollView1.isScrollEnabled = false
            scrollView2.isScrollEnabled = false
        }
    }
    // called when scroll view grinds to a halt
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView){
        scrollView0.isScrollEnabled = true
        scrollView1.isScrollEnabled = true
        scrollView2.isScrollEnabled = true
        scrollView3.isScrollEnabled = true
    }
}
