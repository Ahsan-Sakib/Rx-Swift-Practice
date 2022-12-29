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

    let items = Observable.just([
        ItemModel(name: "item 1", image: "image1"),
        ItemModel(name: "item 2", image: "image2"),
        ItemModel(name: "item 3", image: "image3"),
        ItemModel(name: "item 4", image: "image4")]
   )

//    let items = [
//        ItemModel(name: "item 1", image: "image1"),
//        ItemModel(name: "item 2", image: "image2"),
//        ItemModel(name: "item 3", image: "image3"),
//        ItemModel(name: "item 4", image: "image4"),
//    ]

    let dispose = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.itemTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        itemTableView.register(UINib(nibName: "itemTableViewCell", bundle: nil), forCellReuseIdentifier: "itemTableViewCell")

        items.bind(to: itemTableView
            .rx
            .items(cellIdentifier: "itemTableViewCell",cellType: itemTableViewCell.self)){
                (row, element, cell) in
                cell.configureCell(item: element)
            }
            .disposed(by: dispose)

//        itemTableView
//            .rx
//            .modelSelected(ItemModel.self)
//            .subscribe { object in
//                let detailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
//                detailsViewController.imageName = object.image
//                self.navigationController?.pushViewController(detailsViewController, animated: true)
//            }
//            .disposed(by: dispose)

        itemTableView
            .rx
            .itemSelected
            .subscribe { indexPath in
                let detailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
              //  detailsViewController.imageName = items[indexPath.row].image
                self.navigationController?.pushViewController(detailsViewController, animated: true)
            }
    }
}

extension ViewController{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115
    }
}
