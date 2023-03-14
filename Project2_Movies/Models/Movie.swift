//
//  Movie.swift
//  Project2_Movies
//
//  Created by Arun Deegutla on 3/8/23.
//

import Foundation

struct MovieResponse : Decodable{
    let results: [Movie]
}

struct Movie : Decodable{
    let title: String
    let poster_path: URL
    let overview: String
    let backdrop_path: URL
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
}

extension Movie {

    /// An array of mock tracks
    static var allMovies: [Movie]  = [
        Movie(
            title: "Knock at the Cabin",
            poster_path: URL(string: "https://www.themoviedb.org/t/p/original/22z44LPkMyf5nyyXvv8qQLsbom.jpg")!,
            overview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
            backdrop_path: URL(string: "https://www.themoviedb.org/t/p/original/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!,
            vote_average: 6.5,
            vote_count: 884,
            popularity: 3422.537),
        Movie(
            title: "Black Panther: Wakanda Forever",
            poster_path: URL(string: "https://www.themoviedb.org/t/p/original/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!,
            overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
            backdrop_path: URL(string: "https://www.themoviedb.org/t/p/original/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg")!,
            vote_average: 7.3,
            vote_count: 3922,
            popularity: 2525.408),
        Movie(
            title: "Puss in Boots: The Last Wish",
            poster_path: URL(string: "https://www.themoviedb.org/t/p/original/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!,
            overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
            backdrop_path: URL(string: "https://www.themoviedb.org/t/p/original/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!,
            vote_average: 8.4,
            vote_count: 4358,
            popularity: 2158.063),
        Movie(
            title: "A Man Called Otto",
            poster_path: URL(string: "https://www.themoviedb.org/t/p/original/130H1gap9lFfiTF9iDrqNIkFvC9.jpg")!,
            overview: "When a lively young family moves in next door, grumpy widower Otto Anderson meets his match in a quick-witted, pregnant woman named Marisol, leading to an unlikely friendship that turns his world upside down.",
            backdrop_path: URL(string: "https://www.themoviedb.org/t/p/original/v2LilmCylr3bL9TCZSj6syjowZh.jpg")!,
            vote_average: 7.8,
            vote_count: 540,
            popularity: 1977.383),
        Movie(
            title: "Die Hart",
            poster_path: URL(string: "https://www.themoviedb.org/t/p/original/1EnBjTJ5utgT1OXYBZ8YwByRCzP.jpg")!,
            overview: "Follows a fictionalized version of Kevin Hart, as he tries to become an action movie star. He attends a school run by Ron Wilcox, where he attempts to learn the ropes on how to become one of the industry's most coveted action stars.",
            backdrop_path: URL(string: "https://www.themoviedb.org/t/p/original/pxJbfnMIQQxCrdeLD0zQnWr6ouL.jpg")!,
            vote_average: 6.3,
            vote_count: 119,
            popularity: 1941.776),
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}
