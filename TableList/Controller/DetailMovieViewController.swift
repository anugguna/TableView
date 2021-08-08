//
//  DetailMovieViewController.swift
//  TableList
//
//  Created by guna.vendina on 07/08/2021.
//

import UIKit

class DetailMovieViewController: UIViewController {

    @IBOutlet weak var moviePosterLabel: UIImageView!
    @IBOutlet weak var movieTitleAndYear: UILabel!
    var film: Film!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if film != nil {
            moviePosterLabel.image = UIImage(named: film.poster)
            movieTitleAndYear.text = film.movie + " - " + film.year
            movieTitleAndYear.numberOfLines = 0
        }
        
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
