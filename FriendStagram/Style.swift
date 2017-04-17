//
//  Style.swift
//  FriendStagram
//
//  Created by Brandon Danis on 2017-04-16.
//  Copyright © 2017 RBSoftware. All rights reserved.
//

import Foundation
import UIKit

struct Style {
    
    //Defining styles to be used in the app
    static var navigation_title_color = UIColor.black //nav text color
    static var navigation_bar_color = UIColor.white
    
    //tab bar
    static var tab_tint_color = UIColor(red:0.20, green:0.60, blue:0.86, alpha:1.00)
    static var tab_bar_tint_color : UIColor? = nil
    
    //Image Feed view
    static var feed_background_color = UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.00) //background color of feed listview
    static var feed_cell_background_color = UIColor(red:0.90, green:0.90, blue:0.90, alpha:1.00) //background color of cell
    static var feed_cell_content_background_color = UIColor.white //background color of cell content
    static var feed_cell_like_button_color = UIColor(red:0.75, green:0.23, blue:0.19, alpha:1.00)
    static var feed_cell_description_background_color = UIColor.white
    static var feed_cell_description_text_color = UIColor.black
    static var feed_cell_username_label_color = UIColor.black
    
    //Profile view colors
    static var profile_header_background_color = UIColor.white
    static var profile_not_following_background_color = UIColor.black
    static var profile_following_background_color = UIColor(red:0.22, green:0.79, blue:0.45, alpha:1.00)
    static var profile_logout_button_color = UIColor.black
    static var profile_follow_button_title_color = UIColor.white
    static var profile_username_label_color = UIColor.black
    static var profile_post_label_color = UIColor.black
    static var profile_post_count_label_color = UIColor.black
    static var profile_follower_count_label_color = UIColor.black
    static var profile_follower_label_color = UIColor.black
    static var profile_following_count_label_color = UIColor.black
    static var profile_following_label_color = UIColor.black
    
    static let themes : [String] = ["Light","Dark"]
    
    static func loadTheme(){
        if let name = UserDefaults.standard.string(forKey: "theme"){
            print("Theme already defined in UserDefaults. Theme:", name)
            if name == "Light" {
                darkTheme()
            }
        }else{
            print("Setting to light theme")
            UserDefaults.standard.set("Dark", forKey: "theme")
            darkTheme()
        }
    }
    
    static func lightTheme(){
        //Defining styles to be used in the app
        navigation_title_color = UIColor.black
        navigation_bar_color = UIColor.white
        
        tab_tint_color = UIColor(red:0.20, green:0.60, blue:0.86, alpha:1.00)
        tab_bar_tint_color = nil
        
        feed_background_color = UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.00)
        feed_cell_background_color = UIColor(red:0.90, green:0.90, blue:0.90, alpha:1.00)
        feed_cell_content_background_color = UIColor.white
        feed_cell_like_button_color = UIColor(red:0.75, green:0.23, blue:0.19, alpha:1.00)
        feed_cell_description_background_color = UIColor.white
        feed_cell_description_text_color = UIColor.black
        feed_cell_username_label_color = UIColor.black
        
        profile_header_background_color = UIColor.white
        profile_not_following_background_color = UIColor.black
        profile_following_background_color = UIColor(red:0.22, green:0.79, blue:0.45, alpha:1.00)
        profile_logout_button_color = UIColor.black
        profile_follow_button_title_color = UIColor.white
        profile_username_label_color = UIColor.black
        profile_post_label_color = UIColor.black
        profile_post_count_label_color = UIColor.black
        profile_follower_count_label_color = UIColor.black
        profile_follower_label_color = UIColor.black
        profile_following_count_label_color = UIColor.black
        profile_following_label_color = UIColor.black
    }
    
    static func darkTheme(){
        let main_color = UIColor(red:0.16, green:0.16, blue:0.19, alpha:1.00)
        let main_accent_color = UIColor(red:0.75, green:0.23, blue:0.19, alpha:1.00)
        
        navigation_title_color = UIColor.white
        navigation_bar_color = UIColor.black
        
        tab_tint_color = main_accent_color
        tab_bar_tint_color = UIColor.black
        
        feed_background_color = UIColor.black
        feed_cell_background_color = UIColor.black
        feed_cell_content_background_color = main_color
        feed_cell_like_button_color = UIColor(red:0.75, green:0.23, blue:0.19, alpha:1.00)
        feed_cell_description_background_color = main_color
        feed_cell_description_text_color = UIColor.white
        feed_cell_username_label_color = UIColor.white
    }
    
}