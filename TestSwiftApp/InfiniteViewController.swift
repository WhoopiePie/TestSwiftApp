//
//  InfiniteViewController.swift
//  TestSwiftApp
//
//  Created by mas on 2018/08/06.
//  Copyright © 2018年 mas. All rights reserved.
//

import UIKit

class InfiniteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushButtonTapped(_ sender: UIButton) {
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: "InfiniteViewController") as? InfiniteViewController else {
            return
        }
        navigationController?.pushViewController(viewController, animated: true)
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
