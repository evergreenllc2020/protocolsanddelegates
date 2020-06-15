import UIKit
 

class ImageDownloader {
    
    var imageURL:String
    
    var image:UIImage?
    
    // weak var delegate:LogoDownloaderDelegate?
    // SEE NOTE BELOW
    var delegate: ImageDownloaderDelegate?
    
    init(imageURL:String) {
        self.imageURL = imageURL
    }
    
    func download() {
   
        DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
    
          
            let imageURL = URL(string: self.imageURL)
            let imageData = NSData(contentsOf: imageURL!)
            self.image = UIImage(data: imageData! as Data)
            sleep(10)
            print("image downloaded")
    
          
            DispatchQueue.main.async {
         
                self.didDownloadImage()
            }
          
        }
    }
    
   
    func didDownloadImage() {
        delegate?.didFinishDownloading(self)
    }
    
} 
