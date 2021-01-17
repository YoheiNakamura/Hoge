//
//  SubCollectionVC.swift
//  Hoge
//
//  Created by Yohei on 2021/01/17.
//

import UIKit

class SubCollectionVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectedImg: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = selectedImg
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
    }
    
}
