//
//  ViewController.swift
//  MemeMe
//
//  Created by Huiyu Jia on 3/16/17.
//  Copyright © 2017 HUIYU JIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenControl: UISwitch!
    @IBOutlet weak var blueControl: UISwitch!
    @IBOutlet weak var redControl: UISwitch!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var Red: UISlider!
    @IBOutlet weak var Green: UISlider!
    @IBOutlet weak var Blue: UISlider!
    var count=0


    @IBAction func changeColor(_ sender: AnyObject) {
        if self.redControl == nil {
            return
        }

        let r: CGFloat = self.redControl.isOn ? 1 : 0
        let g: CGFloat = self.greenControl.isOn ? 1 : 0
        let b: CGFloat = self.blueControl.isOn ? 1 : 0

        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    @IBAction func changeColorBySlider(_sender: AnyObject){
        let r: CGFloat = CGFloat(self.Red.value)
        let g: CGFloat = CGFloat(self.Green.value)
        let b: CGFloat = CGFloat(self.Blue.value)
colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

