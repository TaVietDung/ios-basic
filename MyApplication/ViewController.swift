//
//  ViewController.swift
//  MyApplication
//
//  Created by Dung on 11/22/17.
//  Copyright © 2017 Dung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnNext(_ sender: Any) {
        let src = storyboard?.instantiateViewController(withIdentifier: "MobileConfigID") as! MobileConfigController
        navigationController?.pushViewController(src, animated: true)
        
        src.message = "Mobile Config"
        
    }
    @IBOutlet weak var wvYoutube: UIWebView!
    
    func displayNotification() {
        let alert = UIAlertController(title: "Notification", message: "Are you continue?", preferredStyle: UIAlertControllerStyle.alert)
        let btnOK = UIAlertAction(title: "OK", style: UIAlertActionStyle.default){
            (btnOK) in alert.dismiss(animated: true, completion: nil)
        }
        let btnCancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel){
            (btnCancel) in alert.dismiss(animated: true, completion: nil)
        }
        alert.addAction(btnOK)
        alert.addAction(btnCancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    func displayWebview() {
        let url: URL = URL(string: "https://www.youtube.com/watch?v=OhVeXScCctk")!
        let urlMobileConfig: URL = URL(string: "https://firebasestorage.googleapis.com/v0/b/test-fcm-79041.appspot.com/o/Demo.mobileconfig?alt=media&token=ebdf98c4-7f32-4835-9db0-994ffcb9ffc3")!
        let request: URLRequest = URLRequest(url: url)
        wvYoutube.loadRequest(request)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //displayNotification()
        
        displayWebview()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

