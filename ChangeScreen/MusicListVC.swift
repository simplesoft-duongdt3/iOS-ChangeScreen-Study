//
//  MusicListVC.swift
//  ChangeScreen
//
//  Created by admin on 4/11/17.
//  Copyright © 2017 duongmh3. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let desView = segue.destination as? DetailVC {
            if let titleStr = sender as? String {
                desView.titleStr = titleStr
            }
        }
    }

    @IBAction func onBackPress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onGoToDetailClick(_ sender: Any) {
        let titleStr = "XXX"
        performSegue(withIdentifier: "GoToDetail", sender: titleStr)
    }
}
