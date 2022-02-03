//
//  DetalhesFilmeViewController.swift
//  AppFilmes
//
//  Created by Dev on 27/01/22.
//

import UIKit

class DetalhesFilmeViewController : UIViewController {
    
    var filme: Filme!
    
    @IBOutlet weak var imagemFilme: UIImageView!
    @IBOutlet weak var tituloFilme: UILabel!
    @IBOutlet weak var descricaoFilme: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagemFilme.image = filme.imagem
        tituloFilme.text = filme.titulo
        descricaoFilme.text = filme.descricao
    }
}
