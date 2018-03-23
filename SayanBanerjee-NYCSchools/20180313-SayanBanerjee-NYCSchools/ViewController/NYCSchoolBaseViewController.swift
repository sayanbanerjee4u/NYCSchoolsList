//
//  NYCSchoolBaseViewController.swift
//  20180313-SayanBanerjee-NYCSchools
//
//  Created by Sayan Banerjee on 3/12/18.
//  Copyright © 2018 Sayan Banerjee. All rights reserved.
//

import UIKit

class NYCSchoolBaseViewController: UIViewController {
    
    let activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: .gray)
    
    func showSpinner() {
        activityIndicator.startAnimating()
    }
    
    func hideSpinner() {
        activityIndicator.stopAnimating()
    }
    
    func showMessage(_ message:String?, title:String?) {
        let alert = UIAlertController(title: title ?? "", message: message ?? "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func setUp() {
        activityIndicator.color = .darkGray
        view.addSubview(activityIndicator)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        activityIndicator.bounds = view.bounds
        activityIndicator.center = view.center
    }
}

