//
//  ViewController.swift
//  miraclePill
//
//  Created by G on 09/08/16.
//  Copyright © 2016 gaberdios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    
    @IBOutlet weak var country: UILabel!
    
    @IBOutlet weak var enterYourCountry: UITextField!
    
    @IBOutlet weak var zipCode: UILabel!
    
    @IBOutlet weak var enterYourZipCode: UITextField!
    
    @IBOutlet weak var buyNow: UIButton!
    

    
    @IBOutlet weak var miraclePillEmoji: UIImageView!
    @IBOutlet weak var miraclePills: UILabel!
    @IBOutlet weak var D150: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var enterYourFullName: UITextField!
    @IBOutlet weak var streetAdress: UILabel!
    @IBOutlet weak var enterYourAddress: UITextField!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var enterYourCity: UITextField!
    @IBOutlet weak var state: UILabel!
    
    @IBOutlet weak var successIndicator: UIImageView!
    
    
    
    
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
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

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        
        statePicker.isHidden = false
        country.isHidden = true
        enterYourCountry.isHidden = true
        zipCode.isHidden = true
        enterYourZipCode.isHidden = true
        buyNow.isHidden = true
        
    }
    
    @IBAction func buyNowBtnPressed(_ sender: AnyObject) {
        
        statePicker.isHidden = true
        statePickerBtn.isHidden = true
        
        
        country.isHidden = true
        
        enterYourCountry.isHidden = true
        
        zipCode.isHidden = true
        
        enterYourZipCode.isHidden = true
        
        buyNow.isHidden = true
        
        
        
        miraclePillEmoji.isHidden = true
        miraclePills.isHidden = true
        D150.isHidden = true
        divider.isHidden = true
        fullName.isHidden = true
        enterYourFullName.isHidden = true
        streetAdress.isHidden = true
        enterYourAddress.isHidden = true
        city.isHidden = true
        enterYourCity.isHidden = true
        state.isHidden = true
        
        successIndicator.isHidden = false

        
        
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        statePickerBtn.setTitle(states[row], for: UIControlState()) //UIControlState.normal
        statePicker.isHidden = true
        country.isHidden = false
        enterYourCountry.isHidden = false
        zipCode.isHidden = false
        enterYourZipCode.isHidden = false
        buyNow.isHidden = false

    }

}

