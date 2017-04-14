//
//  ViewController.swift
//  CGTestMapManager
//
//  Created by DY on 2017/4/6.
//  Copyright © 2017年 -. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mapManager  = CGMapManager.shareManager
        let mapView     = mapManager.getMapView(frame: self.view.bounds)
        self.view.addSubview(mapView)
        
        mapView.autoresizingMask    = [.flexibleTopMargin, .flexibleLeftMargin, .flexibleBottomMargin, .flexibleRightMargin]
        
        mapManager.openUserLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

