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


    @IBAction func AlertAction(_ sender: Any) {
        let controller = UIAlertController()
        controller.title = "Test Alert"
        controller.message = "This is a test"

        let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.default) { action in self.dismiss(animated: true, completion: nil)
        }

        controller.addAction(okAction)
        self.present(controller, animated: true, completion: nil)
    }
    @IBAction func ActivityAction(_ sender: Any) {
        let image = UIImage();
        let activityView = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(activityView, animated: true,completion: nil)
    }
    @IBAction func cameraRoll(_ sender: Any) {
        let cameraRollView = UIImagePickerController()
        self.present(cameraRollView, animated: true, completion: nil)

    }
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

