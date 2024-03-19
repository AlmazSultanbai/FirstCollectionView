//
//  FirstCollectionViewCell.swift
//  FirstCollectionView
//
//  Created by Sultanbai Almaz on 18/3/24.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    private let indexLabel: UILabel = {
        let view = UILabel()
        view.text = "Hello"
        view.textColor = UIColor.blue
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: <#T##CGRect#>)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
