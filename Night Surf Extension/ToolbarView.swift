//
//  ToolbarView.swift
//  Night Surf Extension
//
//  Created by Cyril Steger on 11.10.2023.
//

import Foundation
import SwiftUI



class PopoverViewWrapper: SafariExtensionToolbarView {

    init() {
        super.init(nibName: nil, bundle: nil)
        if #available(macOSApplicationExtension 10.15, *) {
            self.view = NSHostingView(rootView: ToolbarView())
        } else {
            // Fallback on earlier versions
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


// var body = attribute and computed body property

@available(macOSApplicationExtension 10.15, *)
struct ToolbarView:View {
    //Define variables here
    
    @State private var isDarkModeEnabled = false
    private let GithubRepo = "https://github.com/nightguarder/Night-Surf"
    //TODO: Finish adding custom Font later.
    
    @available(macOSApplicationExtension 10.15, *)
    var body: some View {
        VStack(spacing: 5, content: {
            // Title
            Text("NightSurf Settings").padding().font(.title)
            //Github Link
            if #available(macOSApplicationExtension 11.0, *) {
                Link("Github page", destination: URL(string:GithubRepo)!)
            } else {
                // Fallback on earlier versions
                Button("Github page", action: {() -> Void in
                        NSWorkspace.shared.open(URL(string: GithubRepo)!)
                            })
                            .buttonStyle(PlainButtonStyle())
                            .foregroundColor(.blue)
            }
        })
        HStack {
            Button(action: {
                isDarkModeEnabled.toggle()}) {
                    Text(isDarkModeEnabled ? "Turn Off Dark Mode" : "Turn On Dark Mode")
                        .padding()
                            .foregroundColor(.blue)
                        }
        }
    }
    
}

