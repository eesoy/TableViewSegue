//
//  DetailViewController.swift
//  TableView
//
//  Created by soyoung on 2017. 12. 23..
//  Copyright © 2017년 soyoung. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var player: String?
    
    @IBOutlet weak var lbl_player: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl_player.text = player
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}