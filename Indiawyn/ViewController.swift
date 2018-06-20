//
//  ViewController.swift
//  Indiawyn
//
//  Created by Keertika on 20/06/18.
//  Copyright © 2018 keertika. All rights reserved.
//

import UIKit
import SVProgressHUD

class ViewController: UIViewController {

    @IBOutlet var getStarted: UIButton!
    
    var Data:[Model]?
    override func viewDidLoad() {
        super.viewDidLoad()
     self.getStarted.layer.shadowColor = UIColor.black.cgColor
        self.getStarted.layer.shadowOpacity = 0.5
        self.getStarted.layer.shadowRadius = 2
        self.getStarted.layer.shadowOffset = CGSize.zero
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
           self.navigationController?.navigationBar.isHidden = true
        getStarted.layer.cornerRadius = getStarted.layer.frame.size.height/2
        
    }

    @IBAction func getStartedAction(_ sender: Any) {
        SVProgressHUD.show()
 SVProgressHUD.setDefaultMaskType(.clear)
        Presenter.callApi(success: {(data)-> (Void) in
            SVProgressHUD.dismiss()
            self.Data = data
      let destinationVC =   self.storyboard?.instantiateViewController(withIdentifier: "Home") as! Home
            destinationVC.Data = self.Data!
            self.navigationController?.pushViewController(destinationVC, animated: true)
        })
    }
}

