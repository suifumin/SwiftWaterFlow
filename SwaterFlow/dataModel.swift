//
//  dataModel.swift
//  SwaterFlow
//
//  Created by FDC-Fabric on 2018/12/17.
//  Copyright © 2018年 FDC-Fabric. All rights reserved.
//

import UIKit

class dataModel: NSObject {
    @objc  var mywidth:NSString = ""
    @objc var myheight:NSString = ""
    func initWithDic(dic:NSDictionary){
        
        
        self.setValuesForKeys(dic as! [String : Any])
        
        
    }
    
}
