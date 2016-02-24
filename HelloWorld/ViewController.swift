//
//  ViewController.swift
//  HelloWorld
//
//  Created by Reda Mohamed on 2/23/16.
//  Copyright © 2016 FutureGroup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var sendMessageButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onSendMessageClicked(sender: UIButton) {
        messageLabel.hidden = false
        
                messageLabel.text? = sendMessage(nameTextField.text!, hasNewMessage: messageTextField.text!)
        
        
        messageTextField.text = ""
        messageTextField.resignFirstResponder()
        nameTextField.text = ""
        
        
        
        sendMessageButton.setTitle("message Sent", forState: UIControlState.Normal)
    }
    
    func sendMessage(name: String, hasNewMessage : String)->String{
        return "\(name) has new message with content \(hasNewMessage)";
    }

}

