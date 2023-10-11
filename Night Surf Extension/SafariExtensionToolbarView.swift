//
//  SafariExtensionToolbarView.swift
//  Night Surf Extension
//
//  Created by Cyril Steger on 09.10.2023.
//

import SafariServices

class SafariExtensionToolbarView: SFSafariExtensionViewController{
    
    static let shared: SafariExtensionToolbarView = {
        let shared = SafariExtensionToolbarView()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()
}
