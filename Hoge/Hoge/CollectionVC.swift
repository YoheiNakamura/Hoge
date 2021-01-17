//
//  CollectionVC.swift
//  Hoge
//
//  Created by Yohei on 2021/01/17.
//

import UIKit

class CollectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var selectedImage: UIImage?
    
    let images = ["cow", "dog", "fish", "shark", "cow", "dog", "fish", "shark"]
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell :UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: images[indexPath.row])
        
        let label = cell.contentView.viewWithTag(2) as! UILabel
        label.text = String(indexPath.row + 1)
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                          didSelectItemAt indexPath: IndexPath) {
 
        selectedImage = UIImage(named: images[indexPath.row])
        if selectedImage != nil {
            self.performSegue(withIdentifier: "toSubCollectionVC",sender: nil)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let horizontalSpace:CGFloat = 2
        let cellSize:CGFloat = self.view.bounds.width/2 - horizontalSpace
        
        return CGSize(width: cellSize, height: cellSize)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if segue.identifier == "toSubCollectionVC" {
            let nextVC = segue.destination as! SubCollectionVC
            nextVC.selectedImg = selectedImage
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
    }
    
}
