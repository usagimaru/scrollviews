//
//  MyScrollView.swift
//  scrollviews
//
//  Created by M.Satori on 15.12.17.
//  Copyright © 2015 usagimaru. All rights reserved.
//

import UIKit

class MyScrollView: UIScrollView, UIGestureRecognizerDelegate {
	func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool {
		if gestureRecognizer.isKindOfClass(UIPanGestureRecognizer) == true {
			let panGesture: UIPanGestureRecognizer = gestureRecognizer as! UIPanGestureRecognizer
			let velocity = panGesture.velocityInView(panGesture.view)
			let angle = fabs(atan2(velocity.y, velocity.x) * 180.0 / CGFloat(M_PI))
			//print(velocity)
			//print(angle)
				
			if (angle >= 0 && angle <= 45) || (angle >= 135 && angle <= 180) {
			}
			else {
				return false
			}
		}
		
		return true
	}
	
	func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
		if gestureRecognizer.isKindOfClass(UIPanGestureRecognizer) == true &&
		otherGestureRecognizer.isKindOfClass(UIPanGestureRecognizer) == true {
			return true
		}
		
		return false
	}
}
