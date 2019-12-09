//
//  ViewController.swift
//  CustomFontUI
//
//  Created by Kumar Lav on 12/6/19.
//  Copyright © 2019 Kumar Lav. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIFontPickerViewControllerDelegate
{

    
    @IBOutlet weak var fontNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func launchCustomFontPicker(_ sender: Any) {
        
        let vc = UIFontPickerViewController()
            vc.delegate = self
            present(vc, animated: true)
        
    }
    
    
    func fontPickerViewControllerDidPickFont(_ viewController: UIFontPickerViewController) {
           // attempt to read the selected font descriptor, but exit quietly if that fails
             print("Font Selected Successfully........")
           guard let descriptor = viewController.selectedFontDescriptor else { return }
       
           let font = UIFont(descriptor: descriptor, size: 22)
           descriptionLabel.font = font
        fontNameLabel.text! = descriptor.postscriptName
       }
       
       func fontPickerViewControllerDidCancel(_ viewController: UIFontPickerViewController) {
           // handle cancel event here
        print("Cancel Button Clicked........")
       }
    
    
    
}

