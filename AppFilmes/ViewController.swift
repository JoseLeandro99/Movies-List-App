//
//  ViewController.swift
//  AppFilmes
//
//  Created by Dev on 27/01/22.
//

import UIKit

class ViewController: UITableViewController {

    var filmes: [Filme] = []
    
    let moviesDescText = "Descrição curta do filme"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(titulo: "007", descricao: moviesDescText, image: "filme1")
        filmes.append(filme)
        
        filme = Filme(titulo: "Star Wars", descricao: moviesDescText, image: "filme2")
        filmes.append(filme)
        
        filme = Filme(titulo: "Impacto Mortal", descricao: moviesDescText, image: "filme3")
        filmes.append(filme)
        
        filme = Filme(titulo: "DeadPool", descricao: moviesDescText, image: "filme4")
        filmes.append(filme)
        
        filme = Filme(titulo: "O Regresso", descricao: moviesDescText, image: "filme5")
        filmes.append(filme)
        
        filme = Filme(titulo: "A Herdeira", descricao: moviesDescText, image: "filme6")
        filmes.append(filme)
        
        filme = Filme(titulo: "Caçadores de Emoção", descricao: moviesDescText, image: "filme7")
        filmes.append(filme)
        
        filme = Filme(titulo: "Regresso do Mal", descricao: moviesDescText, image: "filme8")
        filmes.append(filme)
        
        filme = Filme(titulo: "A Lenda de Tarzan", descricao: moviesDescText, image: "filme9")
        filmes.append(filme)
        
        filme = Filme(titulo: "Hardcore Henry", descricao: moviesDescText, image: "filme10")
        filmes.append(filme)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusable", for: indexPath) as! FilmeCelula
        
        cell.ImagemFilme.image = filmes[indexPath.row].imagem
        cell.LabelNomeFilme.text = filmes[indexPath.row].titulo
        cell.LabelDescricaoFilme.text = filmes[indexPath.row].descricao
        
        cell.ImagemFilme.layer.cornerRadius = 42
        cell.ImagemFilme.clipsToBounds = true
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalhesFilme" {
            if let index = tableView.indexPathForSelectedRow {
                let destination = segue.destination as! DetalhesFilmeViewController
                destination.filme = self.filmes[index.row]
            }
        }
    }
}

