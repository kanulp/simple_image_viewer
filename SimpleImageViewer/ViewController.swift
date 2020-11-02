//
//  ViewController.swift
//  SimpleImageViewer
//
//  Created by Karan Gajjar on 11/2/20.
//  Copyright © 2020 Karan Gajjar. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet var imageView: UIImageView!
    var imageModel : ImageModel = ImageModel()
    var images : [String] = [String]()
    
     var currentImage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        images = imageModel.getImages()
        loadImage(url: images[0])
        
                let SwipeUp = UISwipeGestureRecognizer()
               let SwipeDown = UISwipeGestureRecognizer()
               let SwipeLeft = UISwipeGestureRecognizer()
               let SwipeRight = UISwipeGestureRecognizer()
               
               SwipeUp.direction = .up
               SwipeDown.direction = .down
               SwipeLeft.direction = .left
               SwipeRight.direction = .right
               
               self.view.addGestureRecognizer(SwipeUp)
               self.view.addGestureRecognizer(SwipeDown)
               self.view.addGestureRecognizer(SwipeLeft)
               self.view.addGestureRecognizer(SwipeRight)
               
               SwipeUp.addTarget(self, action: #selector(Swipe(sender:)))
               SwipeDown.addTarget(self, action: #selector(Swipe(sender:)))
               SwipeLeft.addTarget(self, action: #selector(Swipe(sender:)))
               SwipeRight.addTarget(self, action: #selector(Swipe(sender:)))
        
    }
    
    
    
    func loadImage(url:String){
        let url = URL(string: url)

        DispatchQueue.global().async {
            let data = try? Data(contentsOf: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check / try-catch
            DispatchQueue.main.async {
                self.imageView?.image = UIImage(data: data!)
            }
        }
    }
    
    @objc func Swipe(sender: UISwipeGestureRecognizer)
       {
           switch sender.direction {
           case .up:
                print("swiped up")
                break
           case .down:
                print("swiped down")

                break
           case .left:
                print("swiped left")
                  if currentImage == images.count - 1 {
                    currentImage = 0
                }else{
                    currentImage += 1
                }
                print("current : \(currentImage)")
                loadImage(url: images[currentImage])
                break
           case .right:
                print("swiped right")
                 if currentImage == 0 {
                    currentImage = images.count - 1
                 }else{
                    currentImage -= 1
                    
                    }
                print("current : \(currentImage)")
                loadImage(url: images[currentImage])
                break
           default:
               print("swiped default")
                break
           }
       }
}

