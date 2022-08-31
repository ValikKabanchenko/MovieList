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
    
    @IBAction func buttonAddMovie(_ sender: Any) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return
    }
    

    @IBOutlet weak var titleFilmView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

