//
//  FirstViewController.swift
//  6.01
//
//  Created by mac on 06/01/23.
//

import UIKit

class FirstViewController: UIViewController {
    let tableView = UITableView()
    let menu: [Menu] = [
        Menu(img: "palov", label1: "To'y oshi", label2: " 2-3 kishi uchun", label3: "120 daqiqa"),
        Menu(img:"somsa", label1: "O'rama hamirli somsa", label2: "1 kishi uchun", label3: "40 daqiqa")
    ]
    let img = UIImageView()
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        img.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(img)
        img.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        img.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        img.widthAnchor.constraint(equalToConstant: 50).isActive = true
        img.heightAnchor.constraint(equalToConstant: 50).isActive = true
        img.image = UIImage(systemName: "chevron.left.circle.fill")
        
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: img.rightAnchor, constant: 20).isActive = true
        label.font = .systemFont(ofSize: 30)
        label.text = "Saqlanganlar"
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.register(FirstTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self

    }
    

 

}

extension FirstViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FirstTableViewCell
        cell.clipsToBounds = true
        cell.layer.cornerRadius = 20
        cell.img.image = UIImage(named: menu[indexPath.row].img)
        cell.label1.text = menu[indexPath.row].label1
        cell.label2.text = menu[indexPath.row].label2
        cell.label3.text = menu[indexPath.row].label3
        return cell
    }
    
    
}
