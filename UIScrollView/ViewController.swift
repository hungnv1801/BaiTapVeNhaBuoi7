//
//  ViewController.swift
//  UIScrollView
//
//  Created by Nguyen Trung on 11/6/20.
//  Copyright © 2020 Nguyen Hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = UIColor.yellow
        return  scrollView
        
    }()
    
    let contentView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.red
        return view
    }()
    
    let ten : UITextField = {
        let ten = UITextField()
        ten.translatesAutoresizingMaskIntoConstraints = false
        ten.placeholder = "Ho va Ten"
        return ten
    }()
    
    let sdt : UITextField = {
        let sdt = UITextField()
        sdt.translatesAutoresizingMaskIntoConstraints = false
        sdt.placeholder = "So dien thoai"
        return sdt
    }()
    
    let email : UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.placeholder = "Email"
        return email
    }()
    
    let pass : UITextField = {
        let pass = UITextField()
        pass.translatesAutoresizingMaskIntoConstraints = false

        pass.placeholder = "Mat khau"
        return pass
    }()
    
    let confirmPass : UITextField = {
        let pass = UITextField()
        pass.translatesAutoresizingMaskIntoConstraints = false
        pass.placeholder = "Xac nhan mat khau"
        return pass
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubView()
        autoLayout()
    }
    
    func addSubView() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
    }
    
    func autoLayout() {
        scrollView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 0).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 0).isActive = true
        
        //1c1:
        //scrollView.contentSize = CGSize(width: view.bounds.width, height: 1000)
        
        
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0).isActive = true
        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0).isActive = true
        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0).isActive = true
        
        contentView.widthAnchor.constraint(equalToConstant: view.bounds.width).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: 1000).isActive = true
        
        
        
    }

}

