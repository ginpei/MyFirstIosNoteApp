//
//  DetailViewController.swift
//  MyFirstNote-iOS
//
//  Created by Ginpei on 2017-06-05.
//  Copyright © 2017 Ginpei. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    var text:String = ""
    var masterView:ViewController!

    override func viewDidLoad() {
        print("detail view did load")
        super.viewDidLoad()
        
        // in case when set text before
        setText(text: text)
        
        textView.becomeFirstResponder()
    }
    
    func setText(text: String) {
        self.text = text
        
        // update immediately
        if isViewLoaded {
            textView.text = text
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        masterView.newRowText = textView.text
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
