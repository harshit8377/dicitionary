//
//  secoundViewController.swift
//  MyWhaetherApp 2
//
//  Created by iFlame on 9/20/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class secoundViewController: UIViewController {

    @IBOutlet weak var txtCity: UITextField!
    
    @IBOutlet weak var txtTemp: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func BtnAdd(_ sender: Any) {
        
        if txtCity.text == "" || txtTemp.text == ""{
            
            let alert = UIAlertController(title: "City and Tempreature" , message: "please enter the required field", preferredStyle: .alert)
            let alertok = UIAlertAction(title: "ok", style: .default, handler: { action in
                
                alert.dismiss(animated: true, completion: nil)
                
                })
            alert.addAction(alertok)
            self.present(alert, animated: true, completion: nil)
        }
        
        else{
            
            var mydata = Dictionary<String,String>()
            mydata["city"] = txtCity.text
            mydata["temp"] = txtTemp.text
            
            UserDefaults.standard.set(mydata, forKey: "Harshit")
            
            
            
        }
        
        self.navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
    func didReceiveMemoryWarning() {
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
}
