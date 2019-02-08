//
//  UICacheView.swift
//  UICacheView
//
//  Created by Daniel Dramond on 08/02/2019.
//  Copyright © 2019 Daniel Dramond. All rights reserved.
//

import UIKit

let cache = NSCache<NSString, UIImage>()

public class UICacheView: UIImageView {
    
    var imageUrlStr: String? = nil
    
    public func loadImageFromURL(_ urlString: String) {
        
        self.imageUrlStr = urlString
        
        if let cachedImage = cache.object(forKey: urlString as NSString) {
            self.image = cachedImage
            return
        }
        
        self.image = nil
        
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            
            guard let imageData = data else { return }
            if error != nil { print(error.debugDescription); return }
            
            DispatchQueue.main.async {
                
                if let downloadedImage = UIImage(data: imageData) {
                    
                    if self.imageUrlStr == urlString {
                        self.image = downloadedImage
                    }
                    
                    cache.setObject(downloadedImage, forKey: urlString as NSString)
                }
            }
            
        }).resume()
    }
}
