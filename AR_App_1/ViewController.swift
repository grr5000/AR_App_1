//
//  ViewController.swift
//  AR_App_1
//
//  Created by Greg Ramos on 2/28/23.
//

import UIKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = .horizontal
        sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints,ARSCNDebugOptions.showWorldOrigin]
        sceneView.delegate = self
        sceneView.session.run(config)
    }


}

