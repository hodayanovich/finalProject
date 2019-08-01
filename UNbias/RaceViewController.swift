//
//  RaceViewController.swift
//  UNbias
//
//  Created by Apple on 7/31/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import SafariServices

class RaceViewController: UIViewController {

    
    @IBAction func articleButton(_ sender: Any) {
        showSafariVC(for: "https://www.youtube.com/watch?v=cfwXUIwr9rY")
    }
    
    
    @IBAction func videoRace(_ sender: Any) {
        showVideoVC(for: "https://www.youtube.com/watch?v=nh6DXH8H62YY")

    }
    
    
    @IBAction func resourceRace(_ sender: Any) {
        showResourceVC(for: "https://www.youtube.com/watch?v=TrrQAea0RCk")

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
   func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            //alert
            return
        }
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    
    func showVideoVC(for url: String) {
        guard let url = URL(string: url) else {
            //alert
            return
        }
        let videoVC = SFSafariViewController(url: url)
        present(videoVC, animated: true)
    }
    
    func showResourceVC(for url: String) {
        guard let url = URL(string: url) else {
            //alert
            return
        }
        let resourceVC = SFSafariViewController(url: url)
        present(resourceVC, animated: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
