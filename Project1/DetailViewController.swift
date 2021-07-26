//
//  DetailViewController.swift
//  Project1
//
//  Created by user on 19/07/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    //colocando em ordem
    var selectedPictureNumber = 1
    var totalPictures = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //colocando o nome da image na topBar
        title = "Picture \(selectedImage) of \(totalPictures)"
        //arrumando o botao voltar
        navigationItem.largeTitleDisplayMode = .never
       //carregando a imagem dentro das celulas
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    //mostrar detalhes
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = true
    }
    //ocultar detalhes
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.hidesBarsOnTap = false
    }
    

    

}
