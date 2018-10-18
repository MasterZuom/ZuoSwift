//
//  NewsListViewController.swift
//  swiftDG
//
//  Created by mao zuo on 2017/11/14.
//  Copyright © 2017年 maozuo. All rights reserved.
//

import UIKit

class NewsListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    private let ReuseIdentifier = "ReuseIdentifier"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loadUI()
    }

    func loadUI() {
        let tableView = UITableView(frame: self.view.bounds, style: .plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: ReuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: ReuseIdentifier, for: indexPath)
        cell.textLabel?.text = "徐晨"
        cell.backgroundColor = UIColor.brown
        
        return cell
    }
    
}
