//
//  OrientationViewController.swift
//  UNbias
//
//  Created by Apple on 7/31/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import SafariServices

class OrientationViewController: UIViewController {

    @IBAction func articleOrientation(_ sender: Any) {
        showSafariVC(for: "https://www.youtube.com/watch?v=oTJ-oqwxdZY")
    }
    
    @IBAction func videoOrientation(_ sender: Any) {
        showVideoVC(for: "https://www.instagram.com/daya.novich/?hl=en")
    }
    
    
    @IBAction func resourceOrientation(_ sender: Any) {
        showResourceVC(for: "https://www.krispykreme.com/locate/location-search")
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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
