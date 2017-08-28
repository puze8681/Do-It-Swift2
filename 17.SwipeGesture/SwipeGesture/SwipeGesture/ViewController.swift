//
//  ViewController.swift
//  SwipeGesture
//
//  Created by 박태준 on 2017. 8. 29..
//  Copyright © 2017년 Tae Jun Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let numOfTouchs = 2
    
    @IBOutlet weak var imgViewUp: UIImageView!
    @IBOutlet weak var imgViewRight: UIImageView!
    @IBOutlet weak var imgViewLeft: UIImageView!
    @IBOutlet weak var imgViewDown: UIImageView!

    var imgUp = [UIImage]()
    var imgRight = [UIImage]()
    var imgLeft = [UIImage]()
    var imgDown = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imgUp.append(UIImage(named: "up.png")!)
        imgUp.append(UIImage(named: "down.png")!)
        imgUp.append(UIImage(named: "double.png")!)

        imgRight.append(UIImage(named: "up.png")!)
        imgRight.append(UIImage(named: "down.png")!)
        imgRight.append(UIImage(named: "double.png")!)

        imgLeft.append(UIImage(named: "up.png")!)
        imgLeft.append(UIImage(named: "down.png")!)
        imgLeft.append(UIImage(named: "double.png")!)

        imgDown.append(UIImage(named: "up.png")!)
        imgDown.append(UIImage(named: "down.png")!)
        imgDown.append(UIImage(named: "double.png")!)

        imgViewUp.image = imgUp[0]
        imgViewRight.image = imgRight[0]
        imgViewLeft.image = imgLeft[0]
        imgViewDown.image = imgDown[0]
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeUp.direction = UISwipeGestureRecognizerDirection.up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeUpMulty = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulty(_:)))
        swipeUpMulty.direction = UISwipeGestureRecognizerDirection.up
        swipeUpMulty.numberOfTouchesRequired = numOfTouchs
        self.view.addGestureRecognizer(swipeUpMulty)
        
        let swipeRightMulty = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulty(_:)))
        swipeRightMulty.direction = UISwipeGestureRecognizerDirection.right
        swipeRightMulty.numberOfTouchesRequired = numOfTouchs
        self.view.addGestureRecognizer(swipeRightMulty)
        
        let swipeLeftMulty = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulty(_:)))
        swipeLeftMulty.direction = UISwipeGestureRecognizerDirection.left
        swipeLeftMulty.numberOfTouchesRequired = numOfTouchs
        self.view.addGestureRecognizer(swipeLeftMulty)
        
        let swipeDownMulty = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulty(_:)))
        swipeDownMulty.direction = UISwipeGestureRecognizerDirection.down
        swipeDownMulty.numberOfTouchesRequired = numOfTouchs
        self.view.addGestureRecognizer(swipeDownMulty)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func respondToSwipeGesture(_ gesture: UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            imgViewUp.image = imgUp[0]
            imgViewRight.image = imgRight[0]
            imgViewLeft.image = imgLeft[0]
            imgViewDown.image = imgDown[0]
            
            switch swipeGesture.direction{
            case UISwipeGestureRecognizerDirection.up:
                imgViewUp.image = imgUp[1]
            case UISwipeGestureRecognizerDirection.right:
                imgViewRight.image = imgRight[1]
            case UISwipeGestureRecognizerDirection.left:
                imgViewLeft.image = imgLeft[1]
            case UISwipeGestureRecognizerDirection.down:
                imgViewDown.image = imgDown[1]
            default:
                break
            }
        }
    }
    
    func respondToSwipeGestureMulty(_ gesture: UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            imgViewUp.image = imgUp[0]
            imgViewRight.image = imgRight[0]
            imgViewLeft.image = imgLeft[0]
            imgViewDown.image = imgDown[0]
            
            switch swipeGesture.direction{
            case UISwipeGestureRecognizerDirection.up:
                imgViewUp.image = imgUp[2]
            case UISwipeGestureRecognizerDirection.right:
                imgViewRight.image = imgRight[2]
            case UISwipeGestureRecognizerDirection.left:
                imgViewLeft.image = imgLeft[2]
            case UISwipeGestureRecognizerDirection.down:
                imgViewDown.image = imgDown[2]
            default:
                break
            }
        }
    }

}

