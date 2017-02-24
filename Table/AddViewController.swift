//
//  AddViewController.swift
//  Table
//
//  Created by Lucia on 2017. 2. 24..
//  Copyright © 2017년 Lucia. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak var tfAddItem: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 새 목록 추가하기. 
    @IBAction func btnAddItem(_ sender: UIButton) {
        items.append(tfAddItem.text!) // items에 텍스트 필드의 텍스트 값 추가.
        itemsImageFile.append("clock.png") // 무조건 'clock.png' 파일 추가
        tfAddItem.text="" // 텍스트 필드의 내용 지운다.
        _ = navigationController?.popViewController(animated: true) // 루트 뷰 컨트롤러, 즉 테이블 뷰로 돌아감. 
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
