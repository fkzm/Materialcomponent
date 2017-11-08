//
//  ViewController.swift
//  MaterialTest
//
//  Created by Fateme' Kazemi on 8/14/1396 AP.
//  Copyright © 1396 Fateme' Kazemi. All rights reserved.
//

import UIKit
import MaterialComponents
import MaterialComponents.MaterialButtons
import MaterialComponents.MaterialDialogs
import MaterialComponents.MaterialTextFields

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var mm: MDCButton!
    weak var dialogTransitionController: MDCDialogTransitionController?
    
    @IBOutlet weak var txt: MDCTextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        let multilineTxt = MDCMultilineTextField(frame: CGRect(x: 50, y: 50, width: 200, height: 100))
        self.view.addSubview(multilineTxt)
        mm.setTitle("Raised Button to you", for: .normal);
        mm.sizeToFit();
        label.text = "This is a title"
        label.font = MDCTypography.display3Font()
        label.alpha = MDCTypography.body1FontOpacity()
        txt.placeholder = "placeholder"
        multilineTxt.placeholderLabel.text = "multilineplaceholderLabel"
        
        
        txt.delegate = self
        txt.sizeToFit()
       
        label.sizeToFit()

        dialogTransitionController = MDCDialogTransitionController()

        let alertController = MDCAlertController(title: "Attention", message: "New alert style based on material components")
        
        let action = MDCAlertAction(title:"OK") { (action) in print("OK") }
       
        alertController.addAction(action)
        
        
        present(alertController, animated:true, completion:nil)
    }
    
   
    
    
    
    

    

}

