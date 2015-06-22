//
//  ViewController.swift
//  CustomScrollContainer
//
//  Created by Yan Saraev on 6/21/15.
//  Copyright (c) 2015 nt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var scrollView: UIScrollView?

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let storyboard = UIStoryboard(name: "Main", bundle: nil)

		let aViewController = storyboard.instantiateViewControllerWithIdentifier("A") as! AViewController;
		let bViewController = storyboard.instantiateViewControllerWithIdentifier("B") as! BViewController;
		let cViewController = storyboard.instantiateViewControllerWithIdentifier("C") as! CViewController;

		scrollView!.contentSize = CGSizeMake(3*CGRectGetWidth(aViewController.view.frame), CGRectGetHeight(view.frame));
		
		
		let viewControllers = [aViewController, bViewController, cViewController]
		
		var idx:Int = 0;
		
		for viewController in viewControllers {
			// index is the index within the array
			// participant is the real object contained in the array
			addChildViewController(viewController);
			let originX:CGFloat = CGFloat(idx) * CGRectGetWidth(scrollView!.frame);
			viewController.view.frame = CGRectMake(originX, 0, viewController.view.frame.size.width, viewController.view.frame.size.height);
			scrollView!.addSubview(viewController.view)
			viewController.didMoveToParentViewController(self)
			idx++;
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

