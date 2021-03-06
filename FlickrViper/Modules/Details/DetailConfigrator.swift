//
//  DetailConfigrator.swift
//  VIPERFlickar
//
//  Created by Abhishek Tripathi on 04/07/18.
//  Copyright © 2018 Abhishek Tripathi. All rights reserved.
//

import Foundation

protocol DetailConfigrator {
    func getRouter(photo: Photo) -> DetailRouter
}

class DetailConfigratorImpl: DetailConfigrator {
    func getRouter(photo: Photo) -> DetailRouter {
        return DetailFactory().getResolver(photo:photo)
    }
}
