//
//  ViewController.swift
//  Canvas
//
//  Created by Shebin Koshy on 27/07/23.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

class ViewController: UIViewController {
    
    lazy private var flutterEngine = FlutterEngine(name: "EFL_Flutter_Engine")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        flutterEngine.run()
        GeneratedPluginRegistrant.register(with: self.flutterEngine)
    }
    
    
    @IBAction func redirection() {
        let flutterViewController = flutterEngine.viewController ?? FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        flutterViewController.modalPresentationStyle = .fullScreen
        self.present(flutterViewController, animated: false, completion: nil)
    }


}

