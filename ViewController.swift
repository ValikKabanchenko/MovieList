//
//  ViewController.swift
//  MovieList
//
//  Created by Валик Кабанченко on 31.08.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
   

    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titlElabel: UITextField!
    @IBOutlet weak var yerarLabel: UITextField!
   
    @IBOutlet weak var errorLabel: UILabel!
    
    struct Move {
        var name:String
        var year:Int
    }

    var moves: [Move]  = []

    
    @IBAction func addButtonAction(_ sender: Any) {
        
        let duplicate = moves.first  {$0.name == self.titlElabel.text}
        
        if duplicate != nil {
            errorLabel.text = "This movie is already on your list"
          return
        }else {
            errorLabel.text = " "
        }
       
        if self.titlElabel.text != "" && self.yerarLabel.text != ""{
            let move: Move = Move(name: self.titlElabel.text!, year: Int(self.yerarLabel.text!)!)
            self.moves.append(move)

            UIView.setAnimationsEnabled(false)
            self.tableView.beginUpdates()
            self.tableView.reloadSections(NSIndexSet(index: 0) as IndexSet, with: UITableView.RowAnimation.none)
            self.tableView.endUpdates()
        }else {
            showErrorAlert()
        }
        print("проверка\(moves)")
    }
        
    func  showErrorAlert() {
        let alert = UIAlertController(title: "OOPS", message: "Please type name and yer", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         self.moves.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "MoveCell")!
         cell.selectionStyle = .none
         cell.textLabel?.text = self.moves[indexPath.row].name + " " + "\(self.moves[indexPath.row].year)"
         return cell
     }


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self

     
    }


}

