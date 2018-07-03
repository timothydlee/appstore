//
//  Models.swift
//  app store
//
//  Created by Timothy Lee on 7/2/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit
import Alamofire

class AppCategory: NSObject {
    var name: String?
    var apps: [App]?
    
    static func fetchFeaturedApps() {
        let urlString = "https://api.letsbuildthatapp.com/appstore/featured"
        Alamofire.request(urlString).responseJSON { response in
            print(response.request!)
        }
    }
    
    static func sampleAppCategories() -> [AppCategory] {
        let bestNewAppsCategory = AppCategory()
        
        var apps = [App]()
        
        let frozenApp = App()
        frozenApp.name = "Disney Build It: Frozen"
        frozenApp.imageName = "frozen"
        frozenApp.category = "Entertainment"
        frozenApp.price = NSNumber(value: 3.99)
        apps.append(frozenApp)
        
        bestNewAppsCategory.name = "Best New Apps"
        bestNewAppsCategory.apps = apps
        
        let bestNewGamesCategory = AppCategory()
        
        var bestNewGamesApps = [App]()
        let telepaintApp = App()
        telepaintApp.name = "Telepaint"
        telepaintApp.imageName = "telepaint"
        telepaintApp.category = "Games"
        telepaintApp.price = NSNumber(value: 2.99)
        bestNewGamesApps.append(telepaintApp)
        
        bestNewGamesCategory.name = "Best New Games"
        bestNewGamesCategory.apps = bestNewGamesApps
        
        return [bestNewAppsCategory, bestNewGamesCategory]
    }
}

class App: NSObject {
    
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
    
}
