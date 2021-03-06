////
////  WallTableViewController_Merge.swift
////  iWasHere
////
////  Created by Mohammed Abdelbarry on 8/16/16.
////  Copyright © 2016 iYakout. All rights reserved.
////
//
//import UIKit
//import Firebase
//
//extension WallTableViewController: ListTableViewCellDelegate, GridTableViewCellDelegate {
//    
//    // MARK: - Properties
//    
//    // .. moved to original class
//    
//    
//    // MARK: Table view
//    
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        let numberOfFolders = user.getNumberOfFolders()
//        if isList! {
//            return numberOfFolders
//        } else {
//            if (numberOfFolders % 3) == 0 {
//                return numberOfFolders / 3
//            } else {
//                return numberOfFolders / 3 + 1
//            }
//        }
//    }
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        if isList! {
//            let cell = self.tableView.dequeueReusableCellWithIdentifier("wallListViewCell") as? ListTableViewCell
//            cell?.delegate = self
//            cell?.folderName.text = user.getFolderName(indexPath.row)
//            cell?.folderImage.image =  UIImage(named: "addPictures") // user.getFolderImage(indexPath.row)
//            return cell!
//        } else {
//            let cell = self.tableView.dequeueReusableCellWithIdentifier("wallGridViewCell") as? GridTableViewCell
//            cell?.delegate = self
//            cell?.folderName1.text = user.getFolderName(indexPath.row * 3)
//            cell?.folderName2.text = user.getFolderName(indexPath.row  * 3 + 1)
//            cell?.folderName3.text = user.getFolderName(indexPath.row * 3 + 2)
//            cell?.setFolderImages(user.getFolderImage(indexPath.row * 3),
//                                  image2: user.getFolderImage(indexPath.row * 3 + 1),
//                                  image3: user.getFolderImage(indexPath.row * 3 + 2))
//            return cell!
//        }
//    }
//    
//    // MARK: Grid and List Delegate Methods
//    
//    func userDidSelectGridCell(cell: GridTableViewCell, whichImage: Int) {
//        //let folderIndex = whichImage + self.tableView.indexPathForCell(cell)
//        let indexPath = self.tableView.indexPathForCell(cell)!
//        segueFolderIndex = whichImage + 3 * indexPath.row
//        print(segueFolderIndex)
//        self.performSegueWithIdentifier(folderSegue, sender: self)
//    }
//    func userDidSelectListCell(cell: ListTableViewCell) {
//        //let folderIndex = self.tableView.indexPathForCell(cell)
//        //performSegueWithIdentifier(Image Table Controller)
//        if let indexPath = self.tableView.indexPathForCell(cell) {
//            segueFolderIndex = indexPath.row
//            print(segueFolderIndex)
//            self.performSegueWithIdentifier(folderSegue, sender: self)
//        }
//    }
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == folderSegue {
//            let memoriesViewController = segue.destinationViewController as? MemoriesTableViewController
//            memoriesViewController?.currentFolderIndex = segueFolderIndex
//        }
//    }
//}
