//
//  ViewController.swift
//  protocols and delegates
//
//  Created by Evergreen Technologies on 6/14/20.
//  Copyright © 2020 Evergreen Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ImageDownloaderDelegate {
    
    

     
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var downloadingStatus: UILabel!
    
    
    @IBAction func DownloadBtnClicked(_ sender: UIButton) {
        self.downloadingStatus.text = "Downloading image...."
        let imageURL: String = "https://cdn.spacetelescope.org/archives/images/publicationjpg/heic1509a.jpg"
        let imageDownloader = ImageDownloader(imageURL: imageURL)
        imageDownloader.delegate = self // try nil here
        imageDownloader.download()
        //self.downloadingStatus.text = "Done"
        //self.imageView1.image = imageDownloader.image
        
    }
    
   
    override func viewDidLoad() {
       super.viewDidLoad()
       self.downloadingStatus.text = "Status"
       
        
        
        
        
        
    }
    
    
    func didFinishDownloading(_ sender: ImageDownloader) {
        self.downloadingStatus.text = "Done"
        imageView1.image = sender.image
               
       
    }
 


}

