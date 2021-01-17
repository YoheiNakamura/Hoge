//
//  SegueVC.swift
//  Hoge
//
//  Created by Yohei on 2021/01/17.
//

import UIKit

class SegueVC: UIViewController {

    @IBOutlet weak var naviButton: UIButton!
    @IBOutlet weak var modalButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if (segue.identifier == "NavigationSegue") {
             let nextVC = segue.destination as! ForSegueVC
            nextVC.view.backgroundColor = naviButton.backgroundColor
            nextVC.label.text = naviButton.titleLabel?.text
         }
        if (segue.identifier == "ModalSegue") {
            let nextVC = segue.destination as! ForSegueVC
            nextVC.view.backgroundColor = modalButton.backgroundColor
            nextVC.label.text = modalButton.titleLabel?.text
        }
     }
    
    


}
