//
//  ViewController.swift
//  collection
//
//  Created by NINKAL GUPTA on 16/04/20.
//  Copyright © 2020 NINKAL GUPTA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   // var selectedIndex1:Int = 0
   // var selectedIndex1 = Int()
var selectedIndex1: Int?
    
    @IBOutlet weak var homeCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
       
        
         cell.productLbl.layer.cornerRadius = 15
         cell.productLbl.layer.masksToBounds = true
        // self.homeCollectionView.showsHorizontalScrollIndicator = false
        
      if selectedIndex1 == indexPath.row {
              cell.productLbl.backgroundColor = UIColor.init(red: 0.0/255.0, green: 123.0/255.0, blue: 205.0/255.0, alpha: 1.0)
             // cell.productLbl.backgroundColor = UIColor.init(red: 24.0/255.0, green: 100.0/255.0, blue: 161.0/255.0, alpha: 1.0)
              cell.productLbl.textColor = UIColor.white
             cell.productLbl.setNeedsDisplay()
          } else {
              cell.productLbl.backgroundColor = UIColor.init(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
               cell.productLbl.textColor = UIColor.black
          }
       //collectionView.scrollToItem(at:IndexPath(item: indexPath.row, section: 0), at: .right, animated: false)
      //  homeCollectionView?.scrollToItem(at: IndexPath(row: indexPath.row, section: 0),at: .top,animated: true)

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
       // cell.productLbl.setNeedsDisplay()
          selectedIndex1 = indexPath.row
          self.homeCollectionView.reloadData()
       
          
      }
    
    //Setting decelerationRate to fast gives a nice experience
 //   homeCollectionView.decelerationRate = .fast

    //Add this to your view anywhere
    func centerCell () {
        let centerPoint = CGPoint(x: homeCollectionView.contentOffset.x + homeCollectionView.frame.midY, y: 100)
        if let path = homeCollectionView.indexPathForItem(at: centerPoint) {
            homeCollectionView.scrollToItem(at: path, at: .right, animated: true)
        }
    }

    //Set collectionView.delegate = self then add below funcs
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    
    }
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        centerCell()
    }
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if !decelerate {
            centerCell()
        }
    }
    
    
    
    }
   






