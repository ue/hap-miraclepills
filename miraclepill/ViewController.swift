//
//  ViewController.swift
//  miraclepill
//
//  Created by ugur's mac on 21/01/2017.
//  Copyright © 2017 ugur's mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var pickerBtn: UIButton!
    
    let state = ["samsun", "sakarya" , "karadeniz" , "diyarbakir","turkiye","asdcx"]
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPrest(_ sender: Any) {
        statePicker.isHidden = false
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return state.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return state[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerBtn.setTitle(state[row], for: UIControlState())
        statePicker.isHidden = true
    }
}

