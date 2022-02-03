//
//  Filmes.swift
//  AppFilmes
//
//  Created by Dev on 27/01/22.
//

import UIKit

class Filme {
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    init(titulo: String, descricao: String, image: String) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = UIImage(named: image)
    }
}
