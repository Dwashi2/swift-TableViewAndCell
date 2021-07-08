//
//  ViewController.swift
//  TableViewAndCell
//
//  Created by Daniel Washington Ignacio on 06/07/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    
    var arrPerson: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
        self.myTableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
       
        let person1 = Person(name: "Daniel", surname: "Ignacio", year: 35, gender: .male)
        let person2 = Person(name: "Anton", surname: "Yakov", year: 25, gender: .male)
        let person3 = Person(name: "Marie", surname: "Felip", year: 30, gender: .female)
        let person4 = Person(name: "Gatrin", surname: "Amaro", year:23, gender: .female)
        let person5 = Person(name: "Audrei", surname: "Mag", year: 47, gender: .female)
        let person6 = Person(name: "Magila", surname: "Arlin", year: 55, gender: .male)
        let person7 = Person(name: "Fagun", surname: "Marok", year: 25, gender: .male)
        let person8 = Person(name: "Dekano", surname: "Metil", year: 35, gender: .male)
        let person9 = Person(name: "Larion", surname: "Blorado", year: 19, gender: .male)
        let person10 = Person(name: "Amarino", surname: "Maranha", year: 34, gender: .male)
        
        self.arrPerson = [person1,person2,person3,person4,person5,person6,person7,person8,person9,person10]
        
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        self.myTableView.tableFooterView = UIView()
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrPerson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CustomCell? = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell
        
        cell?.nameLabel.text = self.arrPerson[indexPath.row].name
        cell?.subtitleLabel.text = self.arrPerson[indexPath.row].surname
        
        

        return cell ?? UITableViewCell()
        
    }
    
    
}
