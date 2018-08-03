//
//  SampleXIBViewController.swift
//  TestSwiftApp
//
//  Created by mas on 2018/08/03.
//  Copyright © 2018年 mas. All rights reserved.
//

import UIKit

class SampleXIBViewController: UIViewController {
    @IBOutlet weak var grayView: UIView!
//    let sampleVC = SampleXIBViewController(nibName: "SampleXIBViewController", bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        grayView.backgroundColor = .red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
