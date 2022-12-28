//
//  ViewController.swift
//  Base Application
//
//  Created by Ahsanul Kabir on 17/2/21.
//  Copyright © 2021 sakibwrold. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {
    @IBOutlet weak var itemTableView: UITableView!

//    let items = Observable.just([
//        ItemModel(image: "item 1", name: "image1"),
//        ItemModel(image: "item 2", name: "image2"),
//        ItemModel(image: "item 3", name: "image3"),
//        ItemModel(image: "item 4", name: "image4")]
//    )

    let items = [
        ItemModel(name: "item 1", image: "image1"),
        ItemModel(name: "item 2", image: "image2"),
        ItemModel(name: "item 3", image: "image3"),
        ItemModel(name: "item 4", image: "image4"),
    ]

    let dispose = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         itemTableView.delegate = self
         itemTableView.dataSource = self

     //   self.itemTableView.frame = self.view.bounds
        self.itemTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        itemTableView.register(UINib(nibName: "itemTableViewCell", bundle: nil), forCellReuseIdentifier: "itemTableViewCell")

//        items.bind(to: itemTableView
//            .rx
//            .items(cellIdentifier: "itemTableViewCell")){
//                (row, element, cell) in
//
//            }
//            .disposed(by: dispose)
    }
}


extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemTableViewCell") as! itemTableViewCell
        cell.configureCell(item: items[indexPath.row])
       // cell.imageView?.image = UIImage(named: "image1")
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        let details = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        details.imageName = self.items[indexPath.row].image
        self.navigationController?.pushViewController(details, animated: true)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115
    }
}
