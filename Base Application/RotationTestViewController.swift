//
//  RotationTestViewController.swift
//  Base Application
//
//  Created by BJIT-SAKIB on 30/12/22.
//  Copyright © 2022 sakibwrold. All rights reserved.
//

import UIKit

class RotationTestViewController: UIViewController{
    @IBOutlet weak var image1: UIImageView!

    private let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
       // view.backgroundColor = .red
        return view
    }()

    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
    }()

    private let myView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
      //  view.backgroundColor = .purple
        return view
    }()

    private let mylabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .magenta
        view.numberOfLines = 0
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        

      //  image1.transform = image1.transform.rotated(by: .pi/2)
        
//        image1.transform = image1.transform.scaledBy(x: 0.5, y: 2)
        
       // image1.transform
      //  image1.center = CGPoint(x: 100, y: 100)
        
//        image1.frame.size.height = 100
//
//        image1.frame.size.width = 10
        
    //    image1.frame =  CGRect(x:0, y: 0, width:0, height:0)
        
      //  image1.frame = CGRectMake(0 , 0, self.view.frame.width, self.view.frame.height * 0.7)

        //image1.frame.size.height = 100.0
        
         // MARK:-  my custom view
        
        self.view.addSubview(myView)
        NSLayoutConstraint.activate([
            myView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
           // scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            myView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
          //  myView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            myView.heightAnchor.constraint(equalToConstant: 200),
            myView.widthAnchor.constraint(equalToConstant: 300)
        ])
    
        
         // MARK:-  ScrollView
        self.scrollView.transform = scrollView.transform.rotated(by: .pi/2)
        self.view.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
           // scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
           // scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            scrollView.heightAnchor.constraint(equalToConstant: 300),
            scrollView.widthAnchor.constraint(equalToConstant: 200)
        ])

        
        mylabel.text = "The story of your naibour, the story of your friend. The way we do is very advance sfhsdhshshfhs Evey greate movement pwow sfhsfhs The story of your naibour, the story of your friend. The way we do is very advance sfhsdhshshfhs Evey greate movement pwow sfhsfhs The story of your naibour, the story of your friend. The way we do is very advance sfhsdhshshfhs Evey greate movement pwow sfhsfhs The story of your naibour, the story of your friend. The way we do is very advance sfhsdhshshfhs Evey greate movement pwow sfhsfhs The story of your naibour, the story of your friend. The way we do is very advance sfhsdhshshfhs Evey greate movement pwow sfhsfhs"
        
        
//         // MARK:-  lable
//
        self.contentView.addSubview(mylabel)
        NSLayoutConstraint.activate([
            mylabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            //mylabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            mylabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            mylabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
          //  mylabel.widthAnchor.constraint(equalToConstant: 180)
        ])
//
        
         // MARK:-  content view
        self.scrollView.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20),
           contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -20),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
//            contentView.heightAnchor.constraint(equalTo: mylabel.heightAnchor ),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        ])

        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        //scrollView.alwaysBounceHorizontal = false
        scrollView.bounces = false

    }
    
    
    override func viewDidLayoutSubviews() {
       //image1.frame.size.height = 100.0
       // image1.frame =  CGRect(x:10, y: 300, width:300, height:255)
      //  image1.frame = CGRectMake(100 , 100, self.view.frame.width*0.2, self.view.frame.height * 0.2)

//        NSLayoutConstraint.activate([
//            image1.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
//           // image1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
//            image1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
//           // image1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
//        ])
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            //contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -10),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            contentView.heightAnchor.constraint(equalTo: mylabel.heightAnchor ),
        ])
//
//        scrollView.showsHorizontalScrollIndicator = false
//        scrollView.showsVerticalScrollIndicator = false
//        scrollView.alwaysBounceHorizontal = false
    }
}


extension UIView{
    func setAnchorPoint(anchorPoint: CGPoint) {

        var newPoint = CGPoint(x: self.bounds.size.width * anchorPoint.x, y: self.bounds.size.height * anchorPoint.y)
        var oldPoint = CGPoint(x: self.bounds.size.width * self.layer.anchorPoint.x, y: self.bounds.size.height * self.layer.anchorPoint.y)

        newPoint = newPoint.applying(self.transform)
        oldPoint = oldPoint.applying(self.transform)

        var position : CGPoint = self.layer.position

        position.x -= oldPoint.x
        position.x += newPoint.x;

        position.y -= oldPoint.y;
        position.y += newPoint.y;

        self.layer.position = position;
        self.layer.anchorPoint = anchorPoint;
    }
}
