//
//  DetailViewController.swift
//  Yelp
//
//  Created by Thuan Nguyen on 2/18/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var thumbImageView: UIImageView!
    

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var ratingView: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    var bussiness: Business?
    @IBAction func websiteButton(_ sender: Any) {
        if let url = NSURL(string: (bussiness?.webURL)!) {
            UIApplication.shared.openURL(url as URL)
        }
        
        
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.nameLabel.text = bussiness?.name
        self.addressLabel.text  = bussiness?.address
        self.categoryLabel.text = bussiness?.categories
        let imageURL = bussiness?.imageURL
        thumbImageView.setImageWith(imageURL!)
        let ratingURL = bussiness?.ratingImageURL
        ratingView.setImageWith(ratingURL!)
        self.distanceLabel.text = bussiness?.distance
        let count = bussiness?.reviewCount
        self.reviewLabel.text = "\(count!) reviews"
        self.phoneLabel.text = bussiness?.phoneNumber
        
        navigationItem.title = bussiness?.name
        navigationItem.titleView?.backgroundColor = UIColor.red
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
