//
//  ViewController.swift
//  SwaterFlow
//
//  Created by FDC-Fabric on 2018/12/17.
//  Copyright © 2018年 FDC-Fabric. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource {
    var colletionview:UICollectionView?
    lazy var dataArray = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //添加数据源
        self.addData()
               self.ceateCollectionView()
        
    }
    func ceateCollectionView(){
        let layout = WaterFlow.init()
        layout.layout(dataA: self.dataArray, columns: 3, marginLeft: 10, marginRight: 10, marginMinH: 10, marginMinV: 10)
       
       let collectionview = UICollectionView.init(frame: UIScreen.main.bounds, collectionViewLayout: layout)
        collectionview.backgroundColor = UIColor.white
        self.colletionview = collectionview
        self.view.addSubview(self.colletionview!)
        self.colletionview?.dataSource = self
        
        self.colletionview?.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: "mycell")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:MyCollectionViewCell = colletionview?.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as! MyCollectionViewCell
        let r = (CGFloat)(arc4random_uniform(255) + 1)/255.0
        let g = (CGFloat)(arc4random_uniform(255) + 1)/255.0
        let b = (CGFloat)(arc4random_uniform(255) + 1)/255.0
        cell.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        cell.lable?.text = String(format:"%ld",indexPath.row)
        return cell
    }
    func addData(){
        
       //加载本地plist数据
        let plist:String = Bundle.main.path(forResource: "test.plist", ofType: nil)!
        let plistArray:[NSDictionary] = NSMutableArray.init(contentsOfFile: plist)! as! [NSDictionary]
        for dic:NSDictionary in plistArray {
            let model = dataModel()
            model.initWithDic(dic: dic)
            self.dataArray .add(model)
            
        }
        
        
    }
    
}

