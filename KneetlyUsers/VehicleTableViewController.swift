//
//  Created by Matt Westcott.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//

import UIKit

class VehicleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var vehicleName: UILabel!
    @IBOutlet weak var vehicleType: UILabel!
    @IBOutlet weak var vehicleImage: UIImageView!
}

class VehicleTableViewController: UITableViewController {
    
    var names = ["Miggles's Chariot", "Electric Dreams"]
    var carTypes = ["Toyota Corolla", "Tesla Model S"]
    var images = ["carSmall", "carMedium"]
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
    
    // MARK: - UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! VehicleTableViewCell
        
        let name = names[indexPath.row]
        let type = carTypes[indexPath.row]
        let image = images[indexPath.row]
        cell.vehicleName.text = name
        cell.vehicleType.text = type
        cell.vehicleImage.image = UIImage(named: image)
        
        return cell
    }
}
