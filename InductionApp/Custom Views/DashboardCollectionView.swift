//
//  DashboardCollectionView.swift
//  InductionApp
//
//  Created by QLC on 20/07/20.
//  Copyright © 2020 QLC. All rights reserved.
//

import UIKit

class DashboardCollectionView: UICollectionView {
    
    var numberOfCellsInScreen: CGFloat = 2
    
    let flowLayout = ZoomAndSnapFlowLayout()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI()
    }
    
    func setUI() {
        self.collectionViewLayout = flowLayout
        self.contentInsetAdjustmentBehavior = .always
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
        
        
        cell.setData(targetValue: 100, achievedValue: 50)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return cellSize()
    }
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
    }
}

extension DashboardCollectionView: UICollectionViewDelegateFlowLayout {
    
}
