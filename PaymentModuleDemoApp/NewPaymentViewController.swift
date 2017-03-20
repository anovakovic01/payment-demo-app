//
//  NewPaymentViewController.swift
//  PaymentModuleDemoApp
//
//  Created by Aleksandar Novakovic on 3/20/17.
//  Copyright © 2017 Execom. All rights reserved.
//

import UIKit

class NewPaymentViewController: UIViewController {
    
    let cardSelectionSegueId = "goToCardSelection"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        configAllTextFields(view: view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configAllTextFields(view: UIView) {
        for subview in view.subviews {
            if let textField = subview as? UITextField {
                let border = CALayer()
                let width = CGFloat(2.0)
                border.borderColor = UIColor.gray.cgColor
                border.frame = CGRect(x: 0, y: textField.frame.size.height - width, width:  textField.frame.size.width, height: textField.frame.size.height)
                
                border.borderWidth = width
                textField.layer.addSublayer(border)
                textField.layer.masksToBounds = true
            }
            else {
                configAllTextFields(view: subview)
            }
        }
    }

    @IBAction func proceed(_ sender: Any) {
        performSegue(withIdentifier: cardSelectionSegueId, sender: nil)
    }

}
