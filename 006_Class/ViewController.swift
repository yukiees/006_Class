//
//  ViewController.swift
//  006_Class
//
//  Created by 松島優希 on 2020/11/15.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mentorArray.append(Mentor(name: "ながた", course: "iPhone", imageName: "nagata.jpg"))
        mentorArray.append(Mentor(name: "りょう", course: "Unity", imageName: "ryo.jpg"))
        mentorArray.append(Mentor(name: "たいてぃ", course: "WebD,WebS", imageName: "taithi.jpg"))
        setUI()
    }
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae(_ sender: Any) {
        if index == 0{
            index = mentorArray.count-1
        }else{
            index -= 1
        }
        setUI()
    }
    
    @IBAction func tsugi(_ sender: Any) {
        if index == mentorArray.count-1{
            index = 0
        }else{
            index += 1
        }
        setUI()
    }
    

}

