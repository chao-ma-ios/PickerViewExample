//
//  ViewController.swift
//  PickerViewExample
//
//  Created by Field Employee on 5/21/21.
//
import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       return array[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var color: UIColor?
        switch row {
        case 0: color = UIColor.blue
        case 1: color = UIColor.green
        case 2: color = UIColor.red
        case 3: color = UIColor.yellow
        
        default:
            color = UIColor.white
        }
        self.view.backgroundColor = color
    }
  

    @IBOutlet weak var myPickerView: UIPickerView!
    var array = ["blue","green","red","yellow"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myPickerView.delegate = self
        myPickerView.dataSource = self
        // Do any additional setup
        
    }
    
}

