//
//  MyCollectionViewCell.swift
//  SwaterFlow
//
//  Created by FDC-Fabric on 2018/12/18.
//  Copyright © 2018年 FDC-Fabric. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    var lable:UILabel? = nil
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        lable = UILabel()
        lable?.textColor = UIColor.black
        lable?.textAlignment = .center
        self.contentView.addSubview(lable!)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        lable?.frame = self.bounds
    }
    
    
    
}
