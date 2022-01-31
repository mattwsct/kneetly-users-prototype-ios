//
//  FavouritesTableViewController.swift
//  KneetlyUsers
//
//  Created by Matt Westcott on 27/10/16.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//

import UIKit

class FavouritesTableViewCell:UITableViewCell {
    
    @IBOutlet weak var favouritesImage: UIImageView!
    @IBOutlet weak var favouritesName: UILabel!
    @IBOutlet weak var favouritesOnline: UILabel!
}

class FavouritesTableViewController: UITableViewController {

    var names = ["Thomas", "Kassy"]
    var onlineStatus = ["Online now", "Online 10 minutes ago"]
    var images = ["profileMale", "profileFemale"]
    
    // MARK: - UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FavouritesTableViewCell
        
        let name = names[indexPath.row]
        let online = onlineStatus[indexPath.row]
        let image = images[indexPath.row]
        cell.favouritesName.text = name
        cell.favouritesOnline.text = online
        cell.favouritesImage.image = UIImage(named: image)
        
        return cell
    }
}
