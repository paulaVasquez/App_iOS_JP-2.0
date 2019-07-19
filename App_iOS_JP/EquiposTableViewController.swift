//
//  EquiposTableViewController.swift
//  App_iOS_JP
//
//  Created by Wilson Guiovanny on 7/19/19.
//  Copyright © 2019 ApliMovil. All rights reserved.
//

import UIKit

class EquiposTableViewController: UITableViewController {
    
    var events1: [Events1] = []
    var eventCell:EventCell = EventCell()
    
    var scoreManager:ScoreManager = ScoreManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    //Returns the number of rows in the table section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows according to books collection size, because we have a Book per row
        return scoreManager.scorCount
    }
    //Sets the cell look and feel and data in the table row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell...
        
        /*It first checks for any cells with the requested reuse identifier in the cache, and if none are found,
         it creates a new cell. When a cell is scrolled offscreen, rather than removing the cell from memory,
         it's sent to the cache to be reused*/
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreCell", for: indexPath)
        /*IndexPath parameter contains the number of the section and the row of the cell it’s interested in. It then
         gets a table view cell for this index path, based on the reuse identifier you defined earlier in Interface Builder.
         The index path is generally useful here to know what data to inject into the cell*/
        let score = scoreManager.getScore(at:indexPath.row)
        //Set the text, label an image for each according to the format design we chose for the cell
        
        eventCell.equipos?.text = score.equipos
        eventCell.score?.text = score.score
        eventCell.flag1?.image = score.flag
        //eventCell.flag2?.image = score.flag
        //cell.textLabel?.text = score.equipos
        //cell.detailTextLabel?.text = score.score
        //cell.imageView?.image = score.cover
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
