//
//  FirstCollectionViewCell.swift
//  FirstCollectionView
//
//  Created by Sultanbai Almaz on 18/3/24.
//

import UIKit

class CustomCVCell: UICollectionViewCell {
    
    private let indexLabel: UILabel = {
        let view = UILabel()
        view.text = "Hello"
        view.textColor = UIColor.blue
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = .center
        return view
    }()
    
    private let photoIV: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .green
        contentView.addSubview(indexLabel)
        contentView.addSubview(photoIV)
        setupConstraints()
    }
    
   
    func setupConstraints() {
        NSLayoutConstraint.activate([
            indexLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            indexLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            indexLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            indexLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            
            photoIV.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            photoIV.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            photoIV.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            photoIV.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 10)
        ])
    }
    
    func setIndex(_ index: String) {
        indexLabel.text = index
    }
    
    func setImage(image: String) {
        photoIV.image = UIImage(named: "car1")
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
