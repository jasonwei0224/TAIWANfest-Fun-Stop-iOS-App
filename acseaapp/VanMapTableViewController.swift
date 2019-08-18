//
//  SponsorTableViewController.swift
//  acseaapp
//
//  Created by Jason on 2019-07-03.
//  Copyright © 2019 ACSEA. All rights reserved.
//

import UIKit
struct Map{
    let image  : UIImage?
    let sponsortype: String?
}
class VanMapTableViewController: UITableViewController {
    
    var data = [Map]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        torSponsor();
        
        
        self.tableView.register(MapCell.self, forCellReuseIdentifier: "map")     // Do any additional setup after loading the view.
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 500
        self.tableView.rowHeight = 650
        self.tableView.backgroundColor = UIColor.clear
        //self.tableView.separatorColor = UIColor.black
        self.tableView.separatorColor = UIColor.clear
        
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
        data = [Map.init(image: UIImage(named:"funstopvanfinal.png"), sponsortype: "FUN STOP MAP"),
        ]
    }
    
}

