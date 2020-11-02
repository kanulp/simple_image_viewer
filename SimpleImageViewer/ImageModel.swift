//
//  ImageModel.swift
//  SimpleImageViewer
//
//  Created by Karan Gajjar on 11/2/20.
//  Copyright © 2020 Karan Gajjar. All rights reserved.
//

import Foundation

class ImageModel{
        
    var images : [String]? = [String]()
    
    func getImages() -> [String]{
        
        let str1 = "https://images.freeimages.com/images/large-previews/5e7/o-canada-1386175.jpg"
        
        let str2 = "https://images.freeimages.com/images/large-previews/0a4/canada-1368175.jpg"
        
        let str3 = "https://images.freeimages.com/images/large-previews/107/canada-1177548.jpg"
        
        let str4 = "https://images.freeimages.com/images/large-previews/f29/gooderham-building-in-toronto-1521279.jpg"
        
        let str5 = "https://images.freeimages.com/images/large-previews/260/toronto-s-cn-tower-4-1555635.jpg"
        
        let str6 = "https://images.freeimages.com/images/large-previews/821/toronto-skyline-from-olympic-i-1564006.jpg"
        
        let str7 = "https://images.freeimages.com/images/large-previews/269/skywalk-toronto-1539901.jpg"
        
        let str8 = "https://images.freeimages.com/images/large-previews/9ae/toronto-canada-1227302.jpg"
        
        let str9 = "https://images.freeimages.com/images/large-previews/ab6/maple-trees-1362545.jpg"
        
        images?.append(str1)
        images?.append(str2)
        images?.append(str3)
        images?.append(str4)
        images?.append(str5)
        images?.append(str6)
        images?.append(str7)
        images?.append(str8)
        images?.append(str9)

        return images!
    }
}
