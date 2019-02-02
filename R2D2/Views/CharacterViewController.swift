//
//  CharacterViewController.swift
//  R2D2
//
//  Created by Ráchel Polachová on 29/01/2019.
//  Copyright © 2019 Rachel Polachova. All rights reserved.
//

import UIKit

class CharacterViewController: UIViewController{
    
    

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    
    var selectedCharacter: Character?
    var charactersFilms = [String]()
    let radomArray = ["1st", "blahdawhw", "abrakadabra"]
    
    
    let filmsCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        collection.backgroundColor = UIColor.white
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.isScrollEnabled = true
        
        return collection
        
    }()
    
    let filmsCollectionIdentifier = "filmCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        
        filmsCollection.delegate = self
        filmsCollection.dataSource = self
        filmsCollection.register(CharactersInfoCollectionViewCell.self, forCellWithReuseIdentifier: filmsCollectionIdentifier)
        self.view.addSubview(filmsCollection)
        setupCollection()
        
    }
    
    func setupCollection() {
        
        filmsCollection.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        filmsCollection.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        filmsCollection.heightAnchor.constraint(equalToConstant: 200).isActive = true
        filmsCollection.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        
    }
    
    
    
    func setUI() {
        nameLabel.text = selectedCharacter?.name
        birthYearLabel.text = selectedCharacter?.birthYear
        heightLabel.text = selectedCharacter?.height
    }

}

extension CharacterViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return charactersFilms.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: filmsCollectionIdentifier, for: indexPath) as! CharactersInfoCollectionViewCell
        
        cell.backgroundColor = .gray
        cell.nameLabel.text = charactersFilms[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding: CGFloat =  50
        let collectionViewSize = collectionView.frame.size.width - padding
        
        return CGSize(width: 200, height: collectionViewSize)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3)
    }
    
}