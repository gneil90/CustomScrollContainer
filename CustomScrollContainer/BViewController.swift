//
//  BViewController.swift
//  CustomScrollContainer
//
//  Created by Yan Saraev on 6/21/15.
//  Copyright (c) 2015 nt. All rights reserved.
//

import Foundation
import UIKit

class BViewController: UITableViewController {
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		var cell:CustomTableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! CustomTableViewCell;
		cell.label?.text = "BController";
		return cell;
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1;
	}
	
	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1;
	}

}