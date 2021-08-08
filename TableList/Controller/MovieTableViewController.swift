//
//  MovieTableViewController.swift
//  TableList
//
//  Created by guna.vendina on 06/08/2021.
//

import UIKit

class MovieTableViewController: UITableViewController {

    var films = Film.createFilm()

    override func viewDidLoad() {
    super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return films.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell() }

        //cell.movieLabel.text = "Jurassic Park I"
        //cell.movieImageView.image = UIImage(named: "jp.jpg")
        let film = films[indexPath.row]
        cell.movieImageView.image = UIImage(named: film.poster)
        cell.movieLabel.text = film.movie + "  " + film.year
        return cell
    }
    
    //MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260
    }
    
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currentFilm = films.remove(at: fromIndexPath.row)
        films.insert(currentFilm, at: to.row)
    }
    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPatx = tableView.indexPathForSelectedRow {
        // Get the new view controller using segue.destination.
            print(indexPatx)
            let detailMovieVC = segue.destination as!
            DetailMovieViewController
        // Pass the selected object to the new view controller.
            detailMovieVC.film = films[indexPatx.row]
    }

}
}
