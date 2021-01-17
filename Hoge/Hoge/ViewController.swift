//
//  ViewController.swift
//  Hoge
//
//  Created by Yohei on 2021/01/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年M月d日 H時m分"
        formatter.locale = Locale(identifier: "ja_JP")
        dateLabel.text = formatter.string(from: Date())
    }

    @IBOutlet weak var dateLabel: UILabel!
    
}

