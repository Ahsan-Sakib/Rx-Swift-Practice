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

    let items = Observable.just(["item 1","item 2","item 3","item 4"])
    let dispose = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //  itemTableView.delegate = self
        // itemTableView.dataSource = self

        itemTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

        items.bind(to: itemTableView
            .rx
            .items(cellIdentifier: "cell")){
                (row, element, cell) in
                cell.textLabel?.text = element
            }
            .disposed(by: dispose)
    }
}


//extension ViewController:UITableViewDataSource,UITableViewDelegate{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return items.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
//        cell.textLabel?.text = items[indexPath.row]
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
//}
