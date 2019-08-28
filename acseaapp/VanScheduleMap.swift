//
//  SponsorTableViewController.swift
//  acseaapp
//
//  Created by Jason on 2019-07-03.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit

class VanScheduleMapTableViewController: UITableViewController {
    
    var data = [Map]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        torSponsor();
        
        
        self.tableView.register(MapCell.self, forCellReuseIdentifier: "map")     // Do any additional setup after loading the view.
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 200
        self.tableView.rowHeight = 1600
        self.tableView.backgroundColor = UIColor.clear
        self.tableView.separatorColor = UIColor.black
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "map") as! MapCell
        cell.backgroundColor = UIColor.clear
        cell.mainImageView.backgroundColor = UIColor.clear
        //cell.typeView.backgroundColor = UIColor.clear
        cell.mainImage = data[indexPath.row].image
        cell.type = data[indexPath.row].sponsortype
        cell.typeView.backgroundColor = UIColor.clear
        cell.typeView.textAlignment = .center
        
        cell.typeView.font = UIFont(name: "Arial-BoldMT", size: 24)
        
        // cell.typeView.textAlignment = .center
        cell.layoutSubviews()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func torSponsor(){
        data = [Map.init(image: UIImage(named:"vanday1--1"), sponsortype: ""),
              
                Map.init(image: UIImage(named:"vanday1--2"), sponsortype: ""),
                Map.init(image: UIImage(named:"vanday1--3"), sponsortype: ""),
                Map.init(image: UIImage(named:"vanday2--1"), sponsortype: ""),
                Map.init(image: UIImage(named:"vanday2--2"), sponsortype: ""),
                Map.init(image: UIImage(named:"vanday2--3"), sponsortype: ""),
                // Map.init(image: UIImage(named:"vanday1--2"), sponsortype: ""),
               // Map.init(image: UIImage(named:"van-8.png"), sponsortype: ""),
               // Map.init(image: UIImage(named:"van-9.png"), sponsortype: ""),
               // Map.init(image: UIImage(named:"van-10.png"), sponsortype: ""),
               // Map.init(image: UIImage(named:"van-11.png"), sponsortype: ""),
               // Map.init(image: UIImage(named:"van-12.png"), sponsortype: ""),
               // Map.init(image: UIImage(named:"van-13.png"), sponsortype: ""),
        ]
    }
    
}

