//
//  PhotoDetailsViewController.swift
//  Tumblr
//
//  Created by Enrique Mosqueda on 9/19/19.
//  Copyright © 2019 Enrique Mosqueda. All rights reserved.
//

import UIKit
import AlamofireImage
class PhotoDetailsViewController: UIViewController {

    @IBOutlet weak var posterView: UIImageView!
    var post : [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let photos = post["photos"] as? [[String: Any]] {
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            posterView.af_setImage(withURL: url!)
            
        }
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
