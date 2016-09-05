//
//  ViewController.swift
//  MiraclePills
//
//  Created by James Volmert on 9/1/16.
//  Copyright © 2016 James Volmert. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var stateBtn: UIButton!
    
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var successImg: UIImageView!
    @IBOutlet weak var butbtn: UIButton!
    
    
    //labels and fields for everything
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var addLabel: UILabel!
    @IBOutlet weak var addField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    
    let states = ["Alabama", "Arkansas", "Delaware", "Colorado", "Missouri", "Delaware", "California"]
    
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

    @IBAction func stateButtonPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        
        //hide zip and country
        zipLabel.isHidden = true
        zipField.isHidden = true
        countryLabel.isHidden = true
        countryField.isHidden = true
    }
    @IBAction func buyNowPressed(_ sender: AnyObject) {
        
        // get rid of all the fields and labels and show success image
        nameLabel.isHidden = true
        nameField.isHidden = true
        addLabel.isHidden = true
        addField.isHidden = true
        cityLabel.isHidden = true
        cityField.isHidden = true
        stateLabel.isHidden = true
        stateBtn.isHidden = true
        zipLabel.isHidden = true
        zipField.isHidden = true
        countryLabel.isHidden = true
        countryField.isHidden = true
        butbtn.isHidden = true
        
        successImg.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        // number of components is kind of like hwo many rows do we want to have in our data source
        
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateBtn.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
        
        //bring back zip and country
        zipLabel.isHidden = false
        zipField.isHidden = false
        countryLabel.isHidden = false
        countryField.isHidden = false
    }
    
    
}

