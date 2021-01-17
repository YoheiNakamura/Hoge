//
//  TableVC.swift
//  Hoge
//
//  Created by Yohei on 2021/01/17.
//

import UIKit

class TableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var mySections = [String]()
    //var twoDimArray = [[String]]()
    var twoDimArray = [[Int]]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return twoDimArray[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return mySections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return mySections[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        cell.textLabel!.text = String(twoDimArray[indexPath.section][indexPath.row])
        return cell
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        for _ in 0 ... 1 {
            twoDimArray.append([])
        }
        
        mySections = ["奇数", "偶数"]
        twoDimArray[0] = [1,3,5,7,9]
        twoDimArray[1] = [2,4,6,8,10]
    }

}
