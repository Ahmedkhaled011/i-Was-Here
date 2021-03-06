//  WallTableViewController_Merge.swift
//  SettingsViewController.swift
//  
//
//  Created by Ahmed Khaled on 8/18/16.
//  Copyright © 2016 iYakout. All rights reserved.
//

import UIKit


class SettingsViewController: UITableViewController {
    
    let user = User.getCurrentUser()
    override func viewDidLoad() {
        super.viewDidLoad()
        // to get the required data for user especially(Grid/List & notifications -> (Yes/No))
        user.loadMemories()
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var sendNotifications: UISwitch!
    @IBOutlet weak var folderMode: UISegmentedControl!
    
    /*@IBAction func sendNotificationsToData(sender: AnyObject) {
     
    }*/
    @IBAction func sendNotifications(sender: AnyObject) {
        let isOn = self.sendNotifications.on
        if isOn {
            // Here the switch button is in "On" state.
            // Here we send this information to database for this user
            print("Wanted to send notifications.")
        } else {
            // Here the switch button is in "Off" state.
            // Here we send this information to database for this user
            print("Wanted not to send notifications.")
        }
        user.setNotificationsMode(isOn)
    }
    
    @IBAction func sendFolderModeToDataBase(sender: AnyObject) {
        let iconState = self.folderMode.selectedSegmentIndex
        // Grid mode..
        if iconState == 0 {
            print("Grid mode is selected")
            user.setIconsMode(false)
            print(user.iconsModeIsList())
            // Here we send this information to database for this user
            // TODO: ..
        } else {
            // List mode..
            print("List mode is selected")
            user.setIconsMode(true)
            print(user.iconsModeIsList())
            // Here we send this information to database for this user
            // TODO: ..
            
        }
    }

}
