//
//  CollectionCell.swift
//  PlantaCollection
//
//  Created by Victor Leal Porto de Almeida Arruda on 25/09/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

//A class PlantaCell é a responsável por representar a célula da CollectionView como queremos, no caso um card de plantas
//Esses dados serão preenchidos na ViewController
class PlantaCell: UICollectionViewCell{
    
    @IBOutlet weak var imagemLabelCell: UIImageView!
    @IBOutlet weak var nomeLabelCell: UILabel!
    @IBOutlet weak var hpLabelCell: UILabel!
    @IBOutlet weak var xpLabelCell: UILabel!
    @IBOutlet weak var ataqueLabelCell: UILabel!
    
    
}
