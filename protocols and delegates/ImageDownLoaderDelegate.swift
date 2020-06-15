//
//  ImageDownLoaderDelegate.swift
//  protocols and delegates
//
//  Created by Evergreen Technologies on 6/14/20.
//  Copyright © 2020 Evergreen Technologies. All rights reserved.
//

import Foundation
 
import UIKit
 
//
// This is the DELEGATE PROTOCOL
//
protocol ImageDownloaderDelegate {
    // Classes that adopt this protocol MUST define
    // this method -- and hopefully do something in
    // that definition.
    func didFinishDownloading(_ sender:ImageDownloader)
}
