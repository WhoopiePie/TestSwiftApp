//
//  SampleViewController.swift
//  TestSwiftApp
//
//  Created by mas on 2018/08/03.
//  Copyright © 2018年 mas. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate: class {
    func secondViewController(_ viewController: SecondViewController, didTapButton button: UIButton)
}

class SampleViewController: UIViewController, SecondViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        let sampleVC = SampleXIBViewController(nibName: "SampleXIBViewController", bundle: nil)
//        self.view.addSubview(sampleVC.view)
    }

    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        label.text = "\(button.currentTitle ?? "") Click! insert [Back]"
    }
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch3: UISwitch!

    @IBAction func unwindToSampleView1(Segue: UIStoryboardSegue) {
        if let second = Segue.source as? SecondViewController {
            label.text = second.textField.text ?? "Second Text is Empty"
        }
    }
    
    @IBAction func secondButtonTappedProgrammatically(_ sender: UIButton) {
        guard let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondView") as? SecondViewController else {
            return
        }
        secondViewController.delegate = self
        secondViewController.fromSampleView = label.text ?? ""
        present(secondViewController, animated: true, completion: nil)
    }
    func secondViewController(_ viewController: SecondViewController, didTapButton button: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "presentSecondViewController", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "presentSecondViewController" {
            if let secondVC = segue.destination as? SecondViewController {
                secondVC.fromSampleView = label.text ?? ""
            }
        }
    }
}
