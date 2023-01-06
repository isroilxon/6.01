//
//  FirstTableViewCell.swift
//  6.01
//
//  Created by mac on 06/01/23.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    let img = UIImageView()
    let img2 = UIImageView()
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let background = UIImageView()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        background.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(background)
        background.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        background.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        background.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        background.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        background.heightAnchor.constraint(equalToConstant: 350).isActive = true
        background.image = UIImage(named: "1")
        
        img.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(img)
        img.topAnchor.constraint(equalTo: background.topAnchor, constant: 20).isActive = true
        img.leftAnchor.constraint(equalTo: background.leftAnchor, constant: 20).isActive = true
        img.rightAnchor.constraint(equalTo: background.rightAnchor, constant: -20).isActive = true
        img.heightAnchor.constraint(equalToConstant: 250).isActive = true
        img.clipsToBounds = true
        img.layer.cornerRadius = 20
        
        
        
        img2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(img2)
        img2.topAnchor.constraint(equalTo: img.topAnchor, constant: 10).isActive = true
        img2.rightAnchor.constraint(equalTo: img.rightAnchor, constant: -10).isActive = true
        img2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        img2.widthAnchor.constraint(equalToConstant: 40).isActive = true
        img2.image = UIImage(systemName:"bookmark.circle.fill")
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label1)
        label1.topAnchor.constraint(equalTo: img.bottomAnchor, constant: 20).isActive = true
        label1.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        label1.font = .systemFont(ofSize: 30)
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label2)
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 20).isActive = true
        label2.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 40).isActive = true
        label2.font = .systemFont(ofSize: 15)
        
        label3.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label3)
        label3.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 20).isActive = true
        label3.leftAnchor.constraint(equalTo: label2.rightAnchor, constant: 20).isActive = true
        label3.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        label3.font = .systemFont(ofSize: 15)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
