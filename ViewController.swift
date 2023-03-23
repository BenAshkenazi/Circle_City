//
//  ViewController.swift
//  CircleTheCity
//
//  Created by Ben Ashkenazi on 3/16/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var GPSButton: UIButton?
    @IBOutlet  var ScheduleButton: UIButton?
    @IBOutlet var FAQButton: UIButton?
    @IBOutlet var CallButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    

    @IBAction func goToGPS(_ sender: Any) {
        print("GPS clicked")
        
    }
    
    @IBAction func goToSchedule(_ sender: Any) {
        print("Schedule clicked")
    }
    
    @IBAction func goToFAQ(_ sender: Any) {
        print("FAQ clicked")
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let faqController = storyBoard.instantiateViewController(withIdentifier: "faq_controller")
        faqController.loadViewIfNeeded()
        faqController.view.backgroundColor = .purple
        self.present(faqController, animated: true, completion: nil)
       
    }
    
    @IBAction func goToCall(_ sender: Any) {
        print("Call now clicked")
    }
}

