//
//  BadgesTableViewController.swift
//  KneetlyUsers
//
//  Created by Matt Westcott on 27/10/16.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//

import UIKit

class BadgesTableViewCell: UITableViewCell {

    @IBOutlet weak var badgeTitle: UILabel!
    @IBOutlet weak var badgeDescription: UILabel!
    @IBOutlet weak var badgeImage: UIImageView!
}

class BadgesTableViewController: UITableViewController {

    var titles = ["First Wash", "Gold Star For You", "My Favourite"]
    var subtitles = ["First car wash", "Gave a good review to someone", "You favourited someone"]
    var images = ["spongeHappy", "spongeToothy", "spongeSmiley"]
    
    // MARK: - UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! BadgesTableViewCell
        
        let title = titles[indexPath.row]
        let subtitle = subtitles[indexPath.row]
        let image = images[indexPath.row]
        cell.badgeTitle.text = title
        cell.badgeDescription.text = subtitle
        cell.badgeImage.image = UIImage(named: image)
        
        return cell
    }
}
