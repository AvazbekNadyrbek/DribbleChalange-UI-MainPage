//
//  Product.swift
//  DribbleChalange
//
//  Created by Авазбек Надырбек уулу on 14.07.25.
//

import SwiftUI

struct Product {
    let imgName: String
    let title: String
    let description: String
    
     static func example1() -> Product {
         
         let product = Product(imgName: "ProductImage1", title: "Geometry 3D Elements", description: "Hold up a rectangle and it becomes a cube. Hold up a cube and it becomes a pyramid. Hold up a pyramid and it becomes a sphere. Hold up a sphere and it becomes a rectangle. It's all about perspective")
         
         return product
    }
    
    static func example2() -> Product {
        
        let product = Product(imgName: "ProductImage2", title: "Geometry 3D Elements", description: "Hold up a rectangle and it becomes a cube. Hold up a cube and it becomes a pyramid. Hold up a pyramid and it becomes a sphere. Hold up a sphere and it becomes a rectangle. It's all about perspective")
        return product
        
    }
}

