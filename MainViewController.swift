//
//  TableViewController.swift
//  MyPlaces
//
//  Created by Vladislav on 5/30/21.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
        "The View", "Ember", "Литвины", "Трактир на Парковой", "Бруклин", "Гранд Кушавель",
        "Раковский Бровар", "Lianne", "Astoria Riverside", "Вестфалия", "Fabriq",
        "Grand Cafe", "Васильки", "Peaky Blinders", "Perfetto"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        
        let itemSize = CGSize(width: 77, height: 43.5)
        UIGraphicsBeginImageContextWithOptions(itemSize, false, UIScreen.main.scale)
        let imageRect = CGRect.init(origin: CGPoint.zero, size: itemSize)
        cell.imageView?.image!.draw(in: imageRect)
        cell.imageView?.image! = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return cell
    }

}
