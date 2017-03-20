//
//  ViewController.swift
//  MemeMe
//
//  Created by Huiyu Jia on 3/16/17.
//  Copyright © 2017 HUIYU JIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count=0
    @IBOutlet var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func incrementCount(){

        self.count+=1;
        self.label.text = "\(self.count)"
    }




}

