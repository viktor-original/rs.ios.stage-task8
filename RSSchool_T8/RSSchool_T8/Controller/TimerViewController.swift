//
//  TimerViewController.swift
//  RSSchool_T8
//
//  Created by Viktor Krasilnikov on 7/19/21.
//

import UIKit

@objc public protocol TimerVCDelegate {
    func setTimer(value: Float)
}

@objc public class TimerViewController: UIViewController {
    
    @IBOutlet weak var timeSlider: UISlider!
    @IBOutlet weak var timerLabel: UILabel!
    
    
    @objc public var timerValue: NSNumber!
    @objc public weak var delegate: TimerVCDelegate!
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        timeSlider.value = timerValue.floatValue
        updateTimerLabel()
    }
    
    func updateTimerLabel() {
        timerLabel.text = String(format: "%.2f", timeSlider.value) + " s"
    }
    
    @IBAction func timeSliderChanged(_ sender: UISlider) {
        updateTimerLabel()
    }
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        delegate.setTimer(value: timeSlider.value)
        UIView.animate(withDuration: 0.25) { [self] in
            view.frame = CGRect(x: 0, y: view.bounds.size.height, width: view.bounds.size.width, height: view.bounds.size.height)
        } completion: { _ in
            self.willMove(toParent: nil)
            self.view.removeFromSuperview()
            self.removeFromParent()
        }
    }
}

