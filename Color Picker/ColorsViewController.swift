//
//  ColorsViewController.swift
//  Color Picker
//
//  Created by Eric Mitchell on 3/22/19.
//  Copyright © 2019 Eric Mitchell. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    private let dataSource = [Color(name: "Red", uiColor: UIColor.red),
                              Color(name: "Orange", uiColor: UIColor.orange),
                              Color(name: "Yellow", uiColor: UIColor.yellow),
                              Color(name: "Green", uiColor: UIColor.green),
                              Color(name: "Blue", uiColor: UIColor.blue),
                              Color(name: "Purple", uiColor: UIColor.purple)]

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        pickerView.selectRow(0, inComponent: 0, animated: true)
        colorLabel.text = dataSource[0].name
        view.backgroundColor = dataSource[0].uiColor
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = dataSource[row].name
        view.backgroundColor = dataSource[row].uiColor
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row].name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
