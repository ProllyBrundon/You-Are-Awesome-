//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Brandon Hobbs on 4/14/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    var totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "You Are A Legend!",
                        "You Swifty!",
                        "You Make Me Smile!",
                        "I Think You're Fantastic!"]
        
        var newMessage = messages[Int.random(in: 0...messages.count-1)]
        while messageLabel.text == newMessage {
            print("*** We had a repeating value. Both newMessage and messageLabel.text = \(newMessage) and \(messageLabel.text!)")
            newMessage = messages[Int.random(in: 0...messages.count-1)]
        }
        messageLabel.text = newMessage
        
        
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        
//        messageLabel.text = messages[messageNumber]
        //messageNumber =+ 1 is the same as messageNumber = messageNumber + 1
//        messageNumber = messageNumber + 1
//
//        if messageNumber == messages.count {
//            messageNumber = 0}
//
//        // let imageName = "image" + String(imageNumber)
//        let imageName = "image\(imageNumber)"
//        imageView.image = UIImage(named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == 10 {
//            imageNumber = 0}
            }
        }
        
        //        let awesomeMessage = "You Are Awesome!"
        //        let greatMessage = "You Are Great!"
        //        let bombMessage = "You Are Da Bomb!"
        //
        //        if messageLabel.text == awesomeMessage {
        //            messageLabel.text = greatMessage
        //            imageView.image = UIImage(named: "image1")
        //        } else if messageLabel.text == greatMessage{
        //            messageLabel.text = bombMessage
        //            imageView.image = UIImage(named: "image2")
        //        } else {
        //            messageLabel.text = awesomeMessage
        //            imageView.image = UIImage(named: "image0")
        //        }


