//
//  FeedViewController.swift
//  FriendStagram
//
//  Created by Brandon Danis on 2016-10-06.
//  Copyright © 2016 RBSoftware. All rights reserved.
//

import Foundation
import UIKit

class FeedViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var posts = [
        [
            "user": "Brandon",
            "imageURL": "http://4.bp.blogspot.com/-F_6SfcFHKRE/UIjJKWfbt8I/AAAAAAAAA6w/AK5H_oGl9io/s1600/nature182.jpg"
        ],
        [
            "user": "Brandon",
            "imageURL": "http://rising.blackstar.com/wp-content/uploads/2012/08/95432c1c89bd11e1a9f71231382044a1_7-450x450.jpg"
        ],
        [
            "user": "Brandon",
            "imageURL": "https://s-media-cache-ak0.pinimg.com/originals/58/50/77/585077f705e1e1e6385940fee0e6a4d7.jpg"
        ],
        [
            "user": "Brandon",
            "imageURL": "http://4.bp.blogspot.com/-F_6SfcFHKRE/UIjJKWfbt8I/AAAAAAAAA6w/AK5H_oGl9io/s1600/nature182.jpg"
        ],
        [
            "user": "Brandon",
            "imageURL": "http://blog.ink361.com/wp-content/uploads/2014/11/@hamiltonguevara-.jpg"
        ],
        [
            "user": "Brandon",
            "imageURL": "https://s-media-cache-ak0.pinimg.com/564x/94/a9/db/94a9db37f653d29075f14611c1bd7359.jpg"
        ],
        [
            "user": "Brandon",
            "imageURL": "http://blogcdn.befunky.com/wp-content/uploads/2015/11/Screen-shot-2015-11-09-at-12.55.33-PM.png"
        ],
        [
            "user": "Brandon",
            "imageURL": "http://hahaha.in/wp-content/uploads/2013/04/8e744a5aa38511e2b8e822000a1fbcc7_72.jpg"
        ],
        [
            "user": "Brandon",
            "imageURL": "http://s1.favim.com/610/150710/art-background-beautiful-dark-Favim.com-2933701.jpg"
        ],
        [
            "user": "Brandon",
            "imageURL": "http://66.media.tumblr.com/tumblr_mdd8uyvpgQ1reash6o2_1280.jpg"
        ],
        [
            "user": "Brandon",
            "imageURL": "http://stupiddope.com/wp-content/uploads/2014/07/cory-staudacher-instagram-03.jpg"
        ],
        [
            "user": "Brandon",
            "imageURL": "http://static.boredpanda.com/blog/wp-content/uploads/2015/09/nature-photography-men-of-instagram-16__605.jpg"
        ],
        [
            "user": "Brandon",
            "imageURL": "http://41.media.tumblr.com/eb2d4401b40f60d004c99d289a059590/tumblr_nqeudeGrEZ1u7vbhko2_1280.jpg"
        ],
        [
            "user": "Brandon",
            "imageURL": "http://s8.favim.com/610/150421/alternative-art-background-beautiful-Favim.com-2669488.jpg"
        ],
        [
            "user": "Brandon",
            "imageURL": "http://s7.favim.com/610/151205/beach-boho-bright-instagram-Favim.com-3708977.jpg"
        ]
    ]
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var postListView : UITableView!
    
    let _uiImageID = 1
    let _upvoteButtonID = 2
    
    let _placeHolderUIImage = UIImage(named: "bg")
    
    let _emptyHeart : String = "\u{f08a}"
    let _fullHeart : String = "\u{f004}"
    
    override func viewDidLoad() {
        print("Main View Loaded")
        
        postListView.delegate = self
        postListView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        print("Uh-oh")
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = postListView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        
        let imageView = cell.viewWithTag(_uiImageID) as! UIImageView
        let upvoteButton = cell.viewWithTag(_upvoteButtonID) as! UIButton
        
        imageView.sd_setImage(with: URL(string: posts[indexPath.row]["imageURL"]!), placeholderImage: _placeHolderUIImage)
        
        upvoteButton.setTitle(_fullHeart, for: .normal)
        upvoteButton.setTitleColor(UIColor.red, for: .normal)
        
        return cell
        
    }
    
}






