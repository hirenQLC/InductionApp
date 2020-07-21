//
//  DashboardCollectionView.swift
//  InductionApp
//
//  Created by QLC on 20/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

class DashboardCollectionView: UICollectionView {
    
    var numberOfCellsInScreen: CGFloat = 1.1
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI()
    }
    
    func setUI() {
        self.register(UINib(nibName: "DashboardAttendenceCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DashboardAttendenceCollectionViewCell")
    }
    
    func setData() {
        
        print(ScreenWidth)
        print(ScreenHeight)
        
        self.delegate = self
        self.dataSource = self
        self.reloadData()
    }
    
    func cellSize() -> CGSize {
        let width = (ScreenWidth - 32)/numberOfCellsInScreen
        let height = width * 0.57
        return CGSize(width: width, height: height)
    }
}

extension DashboardCollectionView: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: "DashboardAttendenceCollectionViewCell", for: indexPath) as? DashboardAttendenceCollectionViewCell else {return UICollectionViewCell()}
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return cellSize()
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
    }
}

extension DashboardCollectionView: UICollectionViewDelegateFlowLayout {
    /*
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {

        return UIEdgeInsets(top: 0, left: (ScreenWidth - cellSize().width)/2, bottom: 0, right: (ScreenWidth - cellSize().width)/2)
    }*/
}

extension DashboardCollectionView: UIScrollViewDelegate {
    /*
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // center X of collection View
        let centerX = self.center.x
        
        print(self.visibleCells.count)
        
        // only perform the scaling on cells that are visible on screen
        for cell in self.visibleCells {
            
            // coordinate of the cell in the viewcontroller's root view coordinate space
            let basePosition = cell.convert(CGPoint.zero, to: self)
            let cellCenterX = basePosition.x + self.frame.size.height / 2.0
            
            let distance = abs(cellCenterX - centerX)
            
            let tolerance : CGFloat = 0.02
            var scale = 1.00 + tolerance - (( distance / centerX ) * 0.105)
            if(scale > 1.0){
                scale = 1.0
            }
            
            // set minimum scale so the previous and next album art will have the same size
            // I got this value from trial and error
            // I have no idea why the previous and next album art will not be same size when this is not set 😅
            if(scale < 0.860091){
                scale = 0.860091
            }
            
            // Transform the cell size based on the scale
            cell.transform = CGAffineTransform(scaleX: scale, y: scale)
        }
    }*/
}
