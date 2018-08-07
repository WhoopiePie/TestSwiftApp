//
//  SampleSecondViewController.swift
//  TestSwiftApp
//
//  Created by mas on 2018/08/03.
//  Copyright © 2018年 mas. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController {
    weak var delegate: SecondViewControllerDelegate?
    var fromSampleView = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        textField.text = fromSampleView
    }
    
    @IBOutlet weak var textField: UITextField!
    @IBAction func backProgrammatically(_ sender: UIButton) {
        dismiss(animated: false, completion: {print("from second")})
//        delegate?.secondViewController(self, didTapButton: sender)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard (textField.text?.contains("Back"))! || (textField.text?.contains("qqq"))! else {
            return false
        }
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
