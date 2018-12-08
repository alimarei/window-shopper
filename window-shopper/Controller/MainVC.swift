//
//  ViewController.swift
//  window-shopper
//
//  Created by ali  on 7.12.2018.
//  Copyright © 2018 ali . All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wagetxt: CurrencyTxtField!
    @IBOutlet weak var pricetxt: CurrencyTxtField!
    
    @IBOutlet weak var ResultLbl: UILabel!
   
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width:view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5852690339, blue: 0.03649735451, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wagetxt.inputAccessoryView = calcBtn
        pricetxt.inputAccessoryView = calcBtn
        
        ResultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate() {
        if let wagetxt = wagetxt.text, let pricetxt = pricetxt.text {
            if let wage = Double(wagetxt) , let price = Double(pricetxt) {
                view.endEditing(true)
                ResultLbl.isHidden = false
                hoursLbl.isHidden = false
                ResultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
        }
       
    }
    }
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        ResultLbl.isHidden = true
        hoursLbl.isHidden = true
        wagetxt.text = ""
        pricetxt.text = ""
        
    }
    
}


