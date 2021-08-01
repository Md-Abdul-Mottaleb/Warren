//
//  ViewController.swift
//  CollectionView
//
//  Created by MacBook Pro on 30/7/21.
//

import UIKit

class CollectionViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    @IBOutlet weak var CollectionViewShown: UICollectionView!
    
    var Array = ["24-hours places+  ","Authentic Places+  ","Bakeris+  ","Bakeris+  ","BBQ buffet+  ","BBQ pork+  ","Bear garens+  ","Belgian food+  ","Burgers+","Cafe+  ","Chipininhas+  ","Casual+  ","Champagne+  ","Chorizo+  ","Carrasco+  ","24-hours places+  ","Authentic Places+  ","Bakeris+  ","Bakeris+  ","BBQ buffet+  ","BBQ pork+  ","Bear garens+  ","Belgian food+  ","Burgers+","Cafe+  ","Chipininhas+  ","Casual+  ","Champagne+  ","Chorizo+  ","Carrasco+  ","24-hours places+  ","Authentic Places+  ","Bakeris+  ","Bakeris+  ","BBQ buffet+  ","BBQ pork+  ","Bear garens+  ","Belgian food+  ","Burgers+","Cafe+  ","Chipininhas+  ","Casual+  ","Champagne+  ","Chorizo+  ","Carrasco+  "]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        self.CollectionViewShown.dataSource = self
        self.CollectionViewShown.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.labelForCell.text = Array[indexPath.row]
        
        cell.labelForCell.layer.borderWidth = 1
        cell.labelForCell.layer.borderColor = UIColor.blue.cgColor
        
        
        
        return cell
    }
    

}

