//
//  MobileConfigController.swift
//  MyApplication
//
//  Created by Dung on 12/23/17.
//  Copyright © 2017 Dung. All rights reserved.
//

import UIKit

class MobileConfigController: UIViewController {
    
    var message:String!
    let arr = ["access-point-1", "access-point-network-1"]
    var index: Int = 0

    @IBOutlet weak var imvAvatar: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    fileprivate func downloadMobileConfig() {
        let url: URL = URL(string: "https://firebasestorage.googleapis.com/v0/b/test-fcm-79041.appspot.com/o/Demo.mobileconfig?alt=media&token=ebdf98c4-7f32-4835-9db0-994ffcb9ffc3")!
        let url1: URL = URL(string: "https://dungtv.000webhostapp.com/Demo.html")!
        let url2: URL = URL(string: "http://27.118.30.69/Demo.html")!
        UIApplication.shared.open(url1, options: [:], completionHandler: nil)
    }
    
    @IBAction func btnPrevious(_ sender: Any) {
        index = index - 1
        if(index < 0) {
            index = arr.count - 1
            
        }
        imvAvatar.image = UIImage(named: arr[index])
    }
    @IBAction func btnNext(_ sender: Any) {
        index = index + 1
        if(index == arr.count) {
            index = 0
            
        }
        imvAvatar.image = UIImage(named: arr[index])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayMessage()
        //displayAvatar()
        
        downloadMobileConfig()
    }
    
    func displayMessage(){
        lblTitle.text = message
    }
    
    func displayAvatar(){
        let url: URL = URL(string: "https://www.freelancinggig.com/blog/wp-content/uploads/2017/02/swift-for-ios-development.png")!
        do{
            let data: Data = try Data(contentsOf: url)
            imvAvatar.image = UIImage(data: data)
        }catch{}
    }
    
}
