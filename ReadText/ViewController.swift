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
        let fileUrl = Bundle.main.url(forResource: "lorem", withExtension: "txt", subdirectory: nil)

        do {
            let textoFichero = try String(contentsOf: fileUrl!, encoding: .utf8)
            print(textoFichero)
        } catch let error {
           print(error)
        }
    }
}

