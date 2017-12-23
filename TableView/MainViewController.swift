//
//  ViewController.swift
//  TableView
//
//  Created by soyoung on 2017. 12. 23..
//  Copyright © 2017년 soyoung. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var playerArray = ["이", "김", "최", "류"]
    @IBOutlet weak var tableView_player: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView_player.delegate = self
        tableView_player.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        cell.textLabel?.text = playerArray[indexPath.row]
        return cell
    }
    
    //MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print(indexPath.row)
        
        //performSegue로 이동
        let segueId = indexPath.row % 2 == 0 ? "segueA" : "segueB"
        performSegue(withIdentifier: segueId, sender: nil)
    }
    
    //값 넘김 prepare
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let detailVC = segue.destination as? DetailViewController,
            let cell = sender as? UITableViewCell,
            let indexPath = tableView_player.indexPath(for: cell) {
            detailVC.player = playerArray[indexPath.row]
        }
    }
    

}

