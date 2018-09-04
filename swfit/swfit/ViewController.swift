//
//  ViewController.swift
//  swfit
//
//  Created by 周飙 on 2018/9/4.
//  Copyright © 2018年 周飙. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //赋值运算符
    let b = 10
    var a = 5
    //如果右侧是一个元组与多个值,它的元素可以分解成多个常量或变量
    let (x,y) = (1,2)
    let name = "world"
    
    var has = true
    
    let names = ["Anna", "Alex", "Brian", "Jack"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if x != y{
            a = b
            print(a);
        }
        
        a += 2;
        print(a);
        
        if name == "world" {
            print("hello, world")
        } else {
            print("I'm sorry \(name), but I don't recognize you")
        }
        
        //元组类型一致也是可以比较的（字符串比较同位的字母先后顺序），比如
        //(1, "zebra")<(2, "apple")   // true because 1 is less than 2; "zebra" and "apple" are not compared
        //(3, "apple")<(3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
        //(4, "dog")==(4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"
        //Swift比较运算符只支持元素少于七位的元组进行比较，多于七位只能自己实现比较运算

        has = (name != "world")
        
        print(has ? "hello, world":"I'm sorry \(name), but I don't recognize you")
        
        //如果a是optional类型，a ?? b表示当a = nil的时候，给a默认一个值b(b的类型必须和a声明的类型一致)。
        
        //闭区间（a...b）,表示从a到b的区间范围，也包括a和b,前提条件是（a < b）,常用于数据遍历，例：
        for index in 1...5 {
            print("\(index) times 5 is \(index * 5)")
        }
        
        let count = names.count
        for i in 0..<count {
            print("Person \(i + 1) is called \(names[i])")
        }
        
        //闭区间和半开区间都是一个值到一个值，单边区间指从一个值到末尾或者从开头到某个值。比如：
        for name in names[2...] {
            print(name)
        }
        // Brian
        // Jack
        
        for name in names[...2] {
            print(name)
        }
        // Anna
        // Alex
        // Brian
        
        //当然也有半单边区间，如
        for name in names[..<2] {
            print(name)
        }
        // Anna
        // Alex
        
        
        let range = ...5
        print(range.contains(7))
        print(range.contains(4))
        print(range.contains(-1))

        let allowedEntry = false
        if !allowedEntry {
            print("ACCESS DENIED")
        }
        
        let enteredDoorCode = true
        let passedRetinaScan = false
        if enteredDoorCode && passedRetinaScan {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        
        let hasDoorKey = false
        let knowsOverridePassword = true
        if hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        // Prints "Welcome!"
        
        if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        // Prints "Welcome!"
        
        if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
        // Prints "Welcome!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

