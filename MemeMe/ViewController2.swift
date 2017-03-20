//
//  ViewController2.swift
//  MemeMe
//
//  Created by Huiyu Jia on 3/20/17.
//  Copyright © 2017 HUIYU JIA. All rights reserved.
//

import UIKit

class ViewController2 : UIViewController{
    
    @IBOutlet weak var button: UIButton!

    @IBAction func onClick(_ sender: Any) {
        let vc: ViewController

        vc = self.storyboard?.instantiateViewController(withIdentifier: "Main") as! ViewController

        present(vc, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
    }

}
