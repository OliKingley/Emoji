//
//  ViewController.swift
//  Emoji
//
//  Created by Oliver on 17-04-17.
//  Copyright © 2017 Oliver. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var EmojiView: UITableView!
    
    var emojilist = ["😱","😟","😜","😡","😨","😓","🙏🏿", "💀"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        EmojiView.dataSource = self
        EmojiView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojilist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        print (indexPath.row)
        cell.textLabel?.text = emojilist [indexPath.row]
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

