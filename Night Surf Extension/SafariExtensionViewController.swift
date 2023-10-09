//
//  SafariExtensionViewController.swift
//  Night Surf Extension
//
//  Created by Cyril Steger on 09.10.2023.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()

}
