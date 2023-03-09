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
        Nuke.loadImage(with: movie.backdrop, into: backDrop)
        movieName.text = movie.movieName
        overviewLabel.text = movie.overview
        popularity.text = String(format: "%.2f", movie.popularity) + " Popularity"
        voteAverage.text = String(format: "%.2f", movie.averageVotes) + " avg. vote"
        totalVotesLabel.text = String(format: "%d", movie.totalVotes) + " total votes"
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
