//
//  MonsterImg.swift
//  MyLittlePet
//
//  Created by light on 7/3/16.
//  Copyright © 2016 Vignesh Kumar Rajasekaran. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    
    func playIdleAnimation(char: AnyObject){
        if char as! String == "golem" {
            self.image = UIImage(named: "idle1.png")
            self.animationImages = nil
            
            
            var imgArray = [UIImage]()
            
            for var x = 1;x<=4;x++ {
                let img = UIImage(named: "idle\(x).png")
                imgArray.append(img!)
            }
            
            self.animationImages = imgArray
            self.animationDuration = 0.8
            self.animationRepeatCount = 0
            self.startAnimating()

        }else if char as! String == "hero" {
            self.image = UIImage(named: "idlehero1.png")
            self.animationImages = nil
            
            
            var imgArray = [UIImage]()
            
            for var x = 1;x<=4;x++ {
                let img = UIImage(named: "idlehero\(x).png")
                imgArray.append(img!)
            }
            
            self.animationImages = imgArray
            self.animationDuration = 0.8
            self.animationRepeatCount = 0
            self.startAnimating()

        }
        
        
    }
    
    
    func playDeathAnimation(char: AnyObject){
        
        if char as! String == "golem" {
            self.image = UIImage(named: "dead5.png")
            self.animationImages = nil
            
            var imgArray = [UIImage]()
            
            for var x = 1;x<=5;x++ {
                let img = UIImage(named: "dead\(x).png")
                imgArray.append(img!)
            }
            
            self.animationImages = imgArray
            self.animationDuration = 0.8
            self.animationRepeatCount = 1
            self.startAnimating()
        }else if char as! String == "hero" {
            self.image = UIImage(named: "deadhero5.png")
            self.animationImages = nil
            
            var imgArray = [UIImage]()
            
            for var x = 1;x<=5;x++ {
                let img = UIImage(named: "deadhero\(x).png")
                imgArray.append(img!)
            }
            
            self.animationImages = imgArray
            self.animationDuration = 0.8
            self.animationRepeatCount = 1
            self.startAnimating()
        }
        
        

    }
}