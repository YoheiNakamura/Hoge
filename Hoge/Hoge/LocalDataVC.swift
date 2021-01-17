//
//  LocalDataVC.swift
//  Hoge
//
//  Created by Yohei on 2021/01/18.
//

import UIKit

class LocalDataVC: UIViewController {
    
    let userDefaults = UserDefaults.standard

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBAction func saveText(_ sender: UIButton) {
        userDefaults.set(textField.text, forKey: "text")
        label.text = userDefaults.string(forKey: "text")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = userDefaults.string(forKey: "text")
    }
    


}
