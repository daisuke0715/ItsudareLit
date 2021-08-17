//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 河村大介 on 2021/08/18.
//

import UIKit

class ViewController: UIViewController {
    
    var index: Int = 0
    
    @IBOutlet weak var itsuLabel: UILabel!
    @IBOutlet weak var dokodeLabel: UILabel!
    @IBOutlet weak var daregaLabel: UILabel!
    @IBOutlet weak var doushitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前", "1週間", "昨日", "今日"]
    let dokodeArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let daregaArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let doushitaArray: [String] = ["叫んだ", "演説した", "怒った", "踊った"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func reset() {
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doushitaLabel.text = "----"
        
        index = 0
    }

    @IBAction func change() {
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doushitaLabel.text = doushitaArray[index]
        
        index += 1
        
        if index > 3 {
            index = 0
        }
    }
    
    @IBAction func random(){
        let itsuIndex: Int = Int.random(in: 0...3)
        let dokodeIndex: Int = Int.random(in: 0...3)
        let daregaIndex: Int = Int.random(in: 0...3)
        let doushitaIndex: Int = Int.random(in: 0...3)
        
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("だれが: \(daregaIndex)")
        print("どうした: \(doushitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doushitaLabel.text = doushitaArray[doushitaIndex]
    }

}

