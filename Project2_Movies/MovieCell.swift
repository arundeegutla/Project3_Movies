//
//  MovieCell.swift
//  Project2_Movies
//
//  Created by Arun Deegutla on 3/8/23.
//

import Nuke
import UIKit


class MovieCell: UITableViewCell {

    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var movieNameLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    public func configure(with movie: Movie) {
        movieNameLabel.text = movie.title
        overviewLabel.text = movie.overview
        let url = URL(string: "https://www.themoviedb.org/t/p/original" + (movie.poster_path).absoluteString)
        print("LINK" + (url?.absoluteString ?? " DIDNT"))
        Nuke.loadImage(with: url!, into: posterImage)
    }
}
