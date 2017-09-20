//
//  ViewController.swift
//  MyWhaetherApp 2
//
//  Created by iFlame on 9/20/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    var arrayCity = ["Ahmedabad"]
    var arrayTem  = ["32"]
    
    
    
    @IBOutlet weak var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
  override func viewWillAppear(_ animated: Bool) {
        var dataset = UserDefaults.standard.value(forKey: "Harshit") as! Dictionary<String,String>
        arrayCity.append(dataset["city"]!)
        arrayTem.append(dataset["temp"]!)
        table.reloadData()
    
    
    }
    
    
    @IBAction func btnAdd(_ sender: Any) {
        
        let press = self.storyboard?.instantiateViewController(withIdentifier: "secoundCell") as! secoundViewController
        self.navigationController?.pushViewController(press, animated: true)
        
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return arrayCity.count
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "newCell") as! MyNewCellTableViewCell
        cell1.lblCity.text = arrayCity[indexPath.row]
        cell1.lblTem.text = arrayTem[indexPath.row]
        return cell1
        
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

