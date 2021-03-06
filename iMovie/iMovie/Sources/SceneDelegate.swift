//
//  SceneDelegate.swift
//  iMovie
//
//  Created by Dariy Kordiyak on 11.04.2020.
//  Copyright © 2020 Dariy Kordiyak. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    let store = AppStore(initialState: .init(),
                         reducer: appReducer,
                         environment: World())

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else {
            fatalError()
        }
        
        let window = UIWindow(windowScene: windowScene)
        let rootView = VideoListView().environmentObject(store)
        window.rootViewController = UIHostingController(rootView: rootView)
        self.window = window
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {    }

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}

}
