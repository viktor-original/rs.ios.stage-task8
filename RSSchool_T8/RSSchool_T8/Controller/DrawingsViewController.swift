//
//  DrawingsViewController.swift
//  RSSchool_T8
//
//  Created by Viktor Krasilnikov on 7/17/21.
//

import UIKit

@objc public protocol DrawingsVCDelegate {
    func setDrawing(drawing: NSString)
}

@objc enum Drawings:Int {
    case Planet
    case Head
    case Tree
    case Landscape
}

@objc public class DrawingsViewController: UIViewController {

    @IBOutlet weak var planetButton: ControlButton!
    @IBOutlet weak var headButton: ControlButton!
    @IBOutlet weak var treeButton: ControlButton!
    @IBOutlet weak var landscapeButton: ControlButton!
    
    //@objc public weak var drawDelegate: DrawingsVCDelegate!
    @objc var choosenDrawing: Drawings = .Head
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func touchButton(sender: ControlButton) {
        switch sender.titleLabel?.text {
        case "Planet":
            choosenDrawing = .Planet
        case "Head":
            choosenDrawing = .Head
        case "Tree":
            choosenDrawing = .Tree
        case "Landscape":
            choosenDrawing = .Landscape
        default: return
        }
    }

}
