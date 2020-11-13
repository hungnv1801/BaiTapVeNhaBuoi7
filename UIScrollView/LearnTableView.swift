//
//  LearnTableView.swift
//  UIScrollView
//
//  Created by Nguyen Trung on 11/6/20.
//  Copyright © 2020 Nguyen Hung. All rights reserved.
//

import UIKit

class LearnTableView: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ZaloTableViewCell", bundle: nil), forCellReuseIdentifier: "ZaloTableViewCell")
    }
}

extension LearnTableView: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //khởi tạo cell mặc định
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellID")
//        cell.textLabel?.text = "\(indexPath.row)"
//        cell.detailTextLabel?.text = "Đây là row thứ \(indexPath.row)"
        
        //khởi tạo cell custom
        let cell = tableView.dequeueReusableCell(withIdentifier: "ZaloTableViewCell", for: indexPath) as! ZaloTableViewCell
        cell.imgView.layer.cornerRadius = cell.imgView.frame.height/2
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
