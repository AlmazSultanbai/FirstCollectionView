//
//  ViewController.swift
//  FirstCollectionView
//
//  Created by Sultanbai Almaz on 18/3/24.
//

import UIKit

class ViewController: UIViewController {
   
    private let simpleCollectionView: UICollectionView = {
        
        let cvFlayout = UICollectionViewFlowLayout()  //определяет разметки между сeкцией и  ячейками CollectionView
        cvFlayout.itemSize = CGSize(width: (UIScreen.main.bounds.width / 4)  - 20 , height: 80)
        
        cvFlayout.minimumLineSpacing = 20// отступ между колоннами
        
        cvFlayout.minimumInteritemSpacing = 10 //отступ между рядами
        cvFlayout.sectionInset = UIEdgeInsets(top: 50, left: 10, bottom: 50, right: 10)
        cvFlayout.scrollDirection  = .vertical
//        cVFlayout.sectionInset.top = 30
//        cVFlayout.sectionInset.bottom = 30
//        cVFlayout.sectionInset.left = 10
//        cVFlayout.sectionInset.right = 10
        cvFlayout.collectionView?.layer.borderColor = UIColor.white.cgColor
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: cvFlayout)
        cv.backgroundColor = .white
        cv.layer.borderColor = UIColor.black.cgColor
        cv.layer.cornerRadius = 15
        cv.layer.borderWidth = 6
        return cv
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(simpleCollectionView)
        simpleCollectionView.dataSource = self
        simpleCollectionView.register(CustomCVCell.self, forCellWithReuseIdentifier: "Cell")
        setupConstraints()
    }
    
    func setupConstraints(){
        simpleCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            simpleCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            simpleCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            simpleCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            simpleCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50)
            
        ])
        
    }
    


}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
//        cell.backgroundColor = .systemGray
//        return cell
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CustomCVCell
        //cell?.setIndex(String(indexPath.row))
        cell?.setImage(image: "car1")
        
        return cell ?? UICollectionViewCell()
    
    }
}
