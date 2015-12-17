//
//  ViewController.swift
//  scrollviews
//
//  Created by M.Satori on 15.12.17.
//  Copyright © 2015 usagimaru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var parentScrollView: UIScrollView!
	@IBOutlet weak var childScrollView: MyScrollView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		childScrollView.scrollsToTop = false
		parentScrollView.panGestureRecognizer.delaysTouchesEnded = false
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}

