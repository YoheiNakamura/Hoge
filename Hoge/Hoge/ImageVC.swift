//
//  ImageVC.swift
//  Hoge
//
//  Created by Yohei on 2021/01/17.
//

import UIKit

class ImageVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func startCamera(_ sender: UIBarButtonItem) {
        let sourceType:UIImagePickerController.SourceType = UIImagePickerController.SourceType.camera

        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera){
            let picker = UIImagePickerController()
            picker.sourceType = sourceType
            picker.delegate = self
            self.present(picker, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        self.imageView.image = image
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        self.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

}
