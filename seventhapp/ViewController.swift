//
//  ViewController.swift
//  seventhapp
//
//  Created by JERRY WATERS on 5/23/17.
//  Copyright © 2017 JERRY WATERS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Login(_ sender: Any) {
        if Username.text != "" && Password.text != "" {
            print("success")
        } else {
            let alert = UIAlertController(title: "Failed!", message: "Wrong username or password", preferredStyle: .alert)
            let action1 = UIAlertAction(title: "Try again", style: UIAlertActionStyle.default, handler: { (UIAlertAction) in
                alert.dismiss(animated: true, completion: nil)
            })
            
            alert.addAction(action1)
            self.present(alert, animated: true, completion: nil)
        }
    }
}

