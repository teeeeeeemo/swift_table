//
//  DetailViewController.swift
//  Table
//
//  Created by Lucia on 2017. 2. 24..
//  Copyright © 2017년 Lucia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var receiveItem = "" // Main View에서 받을 텍스트를 위한 변수 'receiveItem'
    
    @IBOutlet weak var lblItem: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblItem.text = receiveItem // 뷰가 노출될 때마다 이 내용을 레이블의 텍스트로 표시.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Main View에서 변수를 받기 위한 함수. 
    func receiveItem(_ item: String) {
        receiveItem = item
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
