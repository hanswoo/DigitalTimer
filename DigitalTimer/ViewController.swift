//
//  ViewController.swift
//  DigitalTimer
//
//  Created by D7702_10 on 2018. 4. 11..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tl: UILabel!
    @IBOutlet weak var stw: UISwitch!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //앱실행시 스위치가 꺼진상태로 시작 한다
        stw.isOn = false
//        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        
        //클로저(Closure)의 사용
//        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
//            self.updateTime()
//        })
    
    }
    @objc func updateTime(){
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EE"
        tl.text = formatter.string(from: date)
    }
    @IBAction func sts(_ sender: Any) {
        if stw.isOn == true{
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
                self.updateTime()})
            }
            else {
                myTimer.invalidate()
            }
            
            
        }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

