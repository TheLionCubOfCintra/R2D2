//
//  FilmViewController.swift
//  R2D2
//
//  Created by Ráchel Polachová on 29/01/2019.
//  Copyright © 2019 Rachel Polachova. All rights reserved.
//

import UIKit

class FilmViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var episodeIdLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    var selectedFilm: Film?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setUI()
    }
    
    func setUI() {
        titleLabel.text = selectedFilm?.title
        episodeIdLabel.text = "\(String(describing: selectedFilm?.episodeId))"
        releaseDateLabel.text = selectedFilm?.releaseDate
    }

}
