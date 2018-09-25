//
//  ViewController.swift
//  PlantaCollection
//
//  Created by Victor Leal Porto de Almeida Arruda on 25/09/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

//Observe que acrescentamos a ViewController pra herdar de UICollectionViewDataSource e UICollectionViewDelegate
class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    //---------------------------Esse trecho é igual ao exemplo passado, só criando os objetos Planta
    //Criando as palntas
    let cacto = Planta(nomeRecebido: "Cacto", hpRecebido: 200, xpRecebido: 30, forcaRecebida: 30, nivelRecebido: 0, imagemRecebida: #imageLiteral(resourceName: "cacto"), imagemBadRecebida: #imageLiteral(resourceName: "cacto_bad"), corRecebida: #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1))
    
    let ipe = Planta(nomeRecebido: "Ipê", hpRecebido: 100, xpRecebido: 0, forcaRecebida: 45, nivelRecebido: 0, imagemRecebida: #imageLiteral(resourceName: "ipe"), imagemBadRecebida: #imageLiteral(resourceName: "ipe_bad"), corRecebida: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
    
    let girassol = Planta(nomeRecebido: "Girassol", hpRecebido: 80, xpRecebido: 20, forcaRecebida: 75, nivelRecebido: 0, imagemRecebida: #imageLiteral(resourceName: "girassol"), imagemBadRecebida: #imageLiteral(resourceName: "girassol_bad"), corRecebida: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
    
    let coqueiro = Planta(nomeRecebido: "Coqueiro", hpRecebido: 180, xpRecebido: 10, forcaRecebida: 55, nivelRecebido: 0, imagemRecebida: #imageLiteral(resourceName: "coqueiro"), imagemBadRecebida: #imageLiteral(resourceName: "coqueiro_bad"), corRecebida: #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1))
    
    //Criando o array para colocar as plantas
    var plantas: [Planta] = []
    
    //---------------------------
    
    //Representação da CollectionView em código
    @IBOutlet weak var plantaCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //colocando as plantas no array
        plantas.append(cacto)
        plantas.append(ipe)
        plantas.append(girassol)
        plantas.append(coqueiro)
        
        //Precisamos associar o DataSource e o Delegate a nossa CollectionView
        plantaCollectionView.delegate = self
        plantaCollectionView.dataSource = self
        
    }
    
    //Esse método é para definir a quantidade de cards, a quantidade de cards será o tamanho do nosso array plantas
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return plantas.count
    }

    //Esse método preenche o conteúdo da PlantaCell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //Aqui criamos uma representação do PlantaCell para assim poder preencher os dados nos cards
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellPlanta",
                                                      for: indexPath) as! PlantaCell
        
        let indice = indexPath.row
        cell.backgroundColor = plantas[indice].corView
        cell.imagemLabelCell.image = plantas[indice].imagem
        cell.nomeLabelCell.text = plantas[indice].nome
        cell.xpLabelCell.text = "XP: " + String(plantas[indice].xp)
        cell.hpLabelCell.text = "HP: " + String(plantas[indice].hp)
        cell.ataqueLabelCell.text = "Ataque: " + String(plantas[indice].forcaAtaque)
        
        return cell
    
    }

}

