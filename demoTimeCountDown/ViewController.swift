//
//  ViewController.swift
//  demoTimeCountDown
//
//  Created by Daniel on 2019/12/19.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeDatePicker: UIDatePicker!
    @IBOutlet weak var chooseTimeLabel: UILabel!
    @IBOutlet weak var nowTimeLabel: UILabel!
  
    @IBOutlet weak var dayLabel: UILabel!
    
    @IBOutlet weak var hourLabel: UILabel!
    
    @IBOutlet weak var minLabel: UILabel!
    @IBOutlet weak var secLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd-yyyy HH:mm"
        nowTimeLabel.text = formatter.string(from: now)
    }
    @IBAction func timeDatePicker(_ sender: UIDatePicker) {
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "MM-dd-yyyy HH:mm"
        chooseTimeLabel.text = formatter.string(from:timeDatePicker.date)
        
        let second = Int(timeDatePicker.date.timeIntervalSince(now))
        let min = second / 60
        let hour = min / 60
        let day = hour / 24
        
        dayLabel.text = day.description
        hourLabel.text = hour.description
        minLabel.text = min.description
        secLabel.text = second.description
        
    }
    
}

