//
//  ViewController.swift
//  samplePList
//
//  Created by Eriko Ichinohe on 2016/02/11.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ファイルのパスを取得
        var filePath = Bundle.main.path(forResource: "friendsList", ofType: "plist")
        
        //ファイルの内容を読み込んでディクショナリー型に代入
        var dic = NSDictionary(contentsOfFile: filePath!)
        
        //名前を表示
        for(key,data) in dic!{
            print(key)
            var dicForData:NSDictionary = data as! NSDictionary
            var gender:String = dicForData["gender"] as! String
            var hobby:String = dicForData["hobby"]as! String
            
            print(gender)
            print(hobby)

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

