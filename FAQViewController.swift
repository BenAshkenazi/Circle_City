//
//  FAQViewController.swift
//  CircleTheCity
//
//  Created by Ben Ashkenazi on 3/16/23.
//

import UIKit
import PDFKit

class FAQViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let pdfView = PDFView(frame: self.view.bounds)
           pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
           self.view.addSubview(pdfView)
           
           // Fit content in PDFView.
           pdfView.autoScales = true
           
           // Load Sample.pdf file from app bundle.
           let fileURL = Bundle.main.url(forResource: "march", withExtension: "pdf")
           pdfView.document = PDFDocument(url: fileURL!)

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
