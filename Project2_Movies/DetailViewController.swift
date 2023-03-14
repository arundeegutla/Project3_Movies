//
//  DetailViewController.swift
//  Project2_Movies
//
//  Created by Arun Deegutla on 3/8/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    var movie: Movie!
    
    @IBOutlet weak var totalVotesLabel: UILabel!
    @IBOutlet weak var voteAverage: UILabel!
    @IBOutlet weak var popularity: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var backDrop: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let url = URL(string: "https://www.themoviedb.org/t/p/original" + (movie.backdrop_path).absoluteString)
        Nuke.loadImage(with: url!, into: backDrop)
        movieName.text = movie.title
        overviewLabel.text = movie.overview
        popularity.text = String(format: "%.2f", movie.popularity) + " Popularity"
        voteAverage.text = String(format: "%.2f", movie.vote_average) + " avg. vote"
        totalVotesLabel.text = String(format: "%d", movie.vote_count) + " total votes"
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
