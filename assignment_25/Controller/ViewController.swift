//
//  ViewController.swift
//  assignment_25
//
//  Created by Nika Topuria on 23.11.21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet private var countdownLabel: UILabel!
    @IBOutlet var circularProgress: ProgressCircle!
    let countdownDuration = 10.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circularProgress.trackClr = UIColor.cyan
        circularProgress.progressClr = UIColor.purple
        circularProgress.setProgressWithAnimation(duration: self.countdownDuration, value: 1)
        var counter = 0
        Timer.scheduledTimer(withTimeInterval: countdownDuration/100, repeats: true) { Timer in
            if counter <= 100{
                self.countdownLabel.text = "\(counter)%"
                counter += 1
            } else {
                Timer.invalidate()
            }
        }
    }
    
}

