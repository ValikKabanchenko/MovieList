//
//  ViewController.swift
//  MovieList
//
//  Created by Валик Кабанченко on 31.08.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    @IBOutlet weak var titleNameMovie: UITextField!
    
    @IBOutlet weak var titleYearMovie: UITextField!
    
    struct Move {
    var name: String?
    var date: Int?
    }
    
    var movies:[Move] = []
    @IBAction func buttonAddMovie(_ sender: Any) {
        let newMove = Move(name:titleNameMovie.text, date:titleYearMovie.hashValue)
        movies.append(newMove)
        print(newMove)
     
    }
  
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IndexPathone", for: indexPath)
        
        return cell
    }
    

    @IBOutlet weak var titleFilmView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleNameMovie.alpha = 0.5
        titleYearMovie.alpha = 0.5
  
    }


}

