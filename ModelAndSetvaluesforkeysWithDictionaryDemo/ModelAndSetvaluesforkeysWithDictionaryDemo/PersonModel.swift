
//
//  PersonModel.swift
//  ModelAndSetvaluesforkeysWithDictionaryDemo
//
//  Created by Clement_Gu on 16/8/17.
//  Copyright © 2016年 clement. All rights reserved.
//

import UIKit

class PersonModel: NSObject {

    //这是一个Person模型
    /// 年龄
    var age:Int = 0
    /// 姓名
    var name:String = ""
    /// 性别
    var sex:String = ""
    /// 这边定义一个在字典里面的key是swift中的关键字的属性
    var undefine:String = ""
    
    /**
     这个方法是防止使用setvalueforkeysWithDictionary的时候字典里的key在模型里面没有处理方法 一般是把方法写出来里面不用写东西这样字典里出现模型没有的key的时候不会报错也不会赋值（除非像下面自己手动赋值）
     
     - parameter value: 模型中未定义的key值对应的value值
     - parameter key:   模型中未定义的key值或者跟跟关键字冲突的字典的key值
     */
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        if key == "Int"
        {
            undefine = value as! String
        
        }
    }
    
    /**
     写一个构造函数主要目的是让其初始化的时候就有进行模型赋值不然一般步骤是创建这个模型然后模型进行setvaluesForkeywithdictionary
     
     - returns: 返回赋值后的模型
     */
    override init() {
        super.init()
        let dic = ["age":18,"name":"Clement","sex":"man","Int":"test"]
        //模型一键赋值 这个其实是运用了kvc的原理
        self.setValuesForKeysWithDictionary(dic)
        
    }
    /**
     这边是自定义的构造函数可以从外面传参使其初始化
     
     - parameter dic: 初始化模型的字典
     
     - returns: 返回赋值后的模型
     */
    init(dic:[String:AnyObject])
    {
        super.init()
        //模型一键赋值 这个其实是运用了kvc的原理
        self.setValuesForKeysWithDictionary(dic)
    }
    
}
