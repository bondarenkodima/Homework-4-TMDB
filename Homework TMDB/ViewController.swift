//
//  ViewController.swift
//  Homework TMDB
//
//  Created by MacBook Pro on 10.12.2022.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "https://api.themoviedb.org/3/trending/movie/week?api_key=28df62535a87e62fff4f3f08261901ef"
 
        AF.request(url).responseJSON { responce in
            
            guard let data = responce.data else { return }
            
            do {
                let allData = try JSONDecoder().decode(WelcomeTreading.self, from: data)
                print(allData.results.first ?? "")

            } catch {
                print(error)
            }
        }
    }    
}

