//
//  imageresize.swift
//  Devicemovement
//
//  Created by Yogesh on 9/10/18.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class imageresize: NSObject
{
    class func resizeImage(image:UIImage,size:CGSize) ->UIImage
    {
        UIGraphicsBeginImageContextWithOptions(size,false,0.0)
        image .draw(in: CGRect.init(x: 0, y: 0, width: size.width, height: size.height))
        let scaledImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext();
        return scaledImage;
    }
}
