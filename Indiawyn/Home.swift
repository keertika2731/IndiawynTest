//
//  Home.swift
//  Indiawyn
//
//  Created by Keertika on 20/06/18.
//  Copyright © 2018 keertika. All rights reserved.
//

import UIKit

class Home: UIViewController,UITableViewDelegate,UITableViewDataSource
{

    @IBOutlet var tableView: UITableView!
    
    
    var Data:[Model] = []
//    {
//        didSet
//        {
//
//            self.tableView.reloadData()
//        }
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.navigationController?.navigationBar.isHidden = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return Data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! TableCell
        cell.id.text = "id:   " + String( describing: self.Data[indexPath.row].id)
        cell.title.text = "title:   " +  self.Data[indexPath.row].title!
        cell.body.text = self.Data[indexPath.row].body
        cell.userId.text = "UserId:   " + String(describing: self.Data[indexPath.row].userId)
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.estimatedRowHeight = 150;
        return UITableViewAutomaticDimension;
    }


}
