//
//  FavoritesTableViewController.swift
//  RickAndMortyReddit
//
//  Created by Travis King on 7/15/18.
//  Copyright © 2018 Travis King. All rights reserved.
//

import UIKit

class FavoritesTableViewController: UITableViewController {
    //MARK: Properties
    var viewModels = [PostOverviewViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.loadSampleData()
        
//        tableView.register(PostOverviewTableViewCell.self, forCellReuseIdentifier: "FavoriteViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModels.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifer = "FavoriteViewCell"
        
        //Not Really Sure why we need to do this
        guard let cell = tableView.dequeueReusableCell(withIdentifier: identifer, for: indexPath) as? FavoritePostOverviewTableViewCell  else {
            fatalError("The dequeued cell is not an instance of RickAndMortyOverviewTableViewCell.")
        }
        
        let viewModel = self.viewModels[indexPath.row]
        cell.favoriteTitleLabel.text = viewModel.title
        
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func loadSampleData() {
        for _ in 1...3 {
            self.viewModels.append(PostOverviewViewModel(title: "And that's the way the news goes", thumbnailURL: ""))
        }
    }

}
