//
//  ViewController.swift
//  ReadText
//
//  Created by RaulF on 20/03/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let path = Bundle.main.path (forResource: "lorem", ofType: "txt")!
        do {
            let textoFichero = try String(contentsOf: URL(string: path)!, encoding: .utf8)
            print(textoFichero)
        } catch let error {
           print(error)
        }
    }
}

