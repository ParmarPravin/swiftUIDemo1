//
//  SwiftUIDemo1App.swift
//  SwiftUIDemo1
//
//  Created by Pravin Parmar on 11/11/24.
//

import SwiftUI

@main
struct SwiftUIDemo1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            LoginView().padding(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
    }
}
