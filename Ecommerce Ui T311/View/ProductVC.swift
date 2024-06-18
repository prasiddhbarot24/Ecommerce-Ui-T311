//
//  ProductVC.swift
//  Ecommerce Ui T311
//
//  Created by webcodegenie on 14/06/24.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var imgProductsArray = ["tent-2","tent-2","tent-2"]
    
    @IBOutlet weak var cvProducts: UICollectionView!
    @IBOutlet weak var imgShop: UIImageView!
    
    @IBOutlet weak var pageController: UIPageControl!
    var currentIndex = 0
    var timer:Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cvProducts.delegate = self
        cvProducts.dataSource = self
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        
        imgShop.image = UIImage(named: "Men")
        imgShop.backgroundColor = .blue
        imgShop.layer.cornerRadius = imgShop.frame.height/2
        imgShop.clipsToBounds = true
        
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(nextImage), userInfo:nil , repeats: true)
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgProductsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let imgCvCell = cvProducts.dequeueReusableCell(withReuseIdentifier: "ProductImgCvCell", for: indexPath) as! ProductImgCvCell
        imgCvCell.imgProduct.image = UIImage(named: imgProductsArray[indexPath.row])
        
        return imgCvCell
        
    }
    
    //moving image slides
    @objc func nextImage(){
        if currentIndex < imgProductsArray.count-1 {
            currentIndex = currentIndex+1
        }else{
            currentIndex = 0
        }
        pageController.currentPage = currentIndex
        cvProducts.scrollToItem(at: IndexPath(item: currentIndex, section: 0), at: .right, animated: true)
    }
    
}
