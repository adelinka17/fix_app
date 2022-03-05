//
//  MovieDetailsViewController.swift
//  Fixter
//
//  Created by Adelina Yelemessova on 3/4/22.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movies: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movies["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movies["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movies["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
    
        posterView.af.setImage(withURL: posterURL!)
        
        let backdropPath = movies["backdrop_path"] as! String
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
    
        backdropView.af.setImage(withURL: backdropURL!)
        
        // Do any additional setup after loading the view.
        
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
