//
//  ViewController.swift
//  ModelAndSetvaluesforkeysWithDictionaryDemo
//
//  Created by Clement_Gu on 16/8/17.
//  Copyright © 2016年 clement. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        //方式1 用构造函数初始化并打印结果 这个是自带的模型
        let personOne = PersonModel()
        print("模型的参数\(personOne.age)  \(personOne.name)  \(personOne.sex)  \(personOne.undefine)")
        
        //方式二 用自定义的构造函数
        let dic = ["age":28,"name":"Clement__","sex":"man__ ","Int":"nuewtype"]
        let personTwo = PersonModel.init(dic: dic)
        print("模型TWO的参数\(personTwo.age)  \(personTwo.name)  \(personTwo.sex)  \(personTwo.undefine)")
        
        //方式三 不写构造函数（即不用init）
        let personThree = PersonModel()
        let dicThree = ["age":38,"name":"Clement__three","sex":"man__Three","Int":"nuewtype_three"]
        //外部对模型进行赋值
        personThree.setValuesForKeysWithDictionary(dicThree)
        print("模型Three的参数\(personThree.age)  \(personThree.name)  \(personThree.sex)  \(personThree.undefine)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

