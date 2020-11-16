//
//  mentor.swift
//  006_Class
//
//  Created by 松島優希 on 2020/11/16.
//

import UIKit

class Mentor{
    
    var name: String!
    var course: String!
    var imageName: String!
    
    init(name: String, course: String, imageName: String){
        self.name = name
        self.course = course
        self.imageName = imageName
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}
