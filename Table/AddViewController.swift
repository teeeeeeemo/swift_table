//
//  AddViewController.swift
//  Table
//
//  Created by Lucia on 2017. 2. 24..
//  Copyright © 2017년 Lucia. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UIPickerViewDelegate {
    
    let MAX_ARRAY_NUM = 3
    let PICKER_VIEW_COLUMN = 1
    let PICKER_VIEW_HEIGHT:CGFloat = 40
    var imageArray = [UIImage?]()
    var imageFileName = [ "cart.png", "clock.png", "pencil.png"]
    var fileName = ""
    
    @IBOutlet weak var tfAddItem: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pickerImage: UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        fileName = itemsImageFile[0]
        imageView.image = imageArray[0]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 새 목록 추가하기. 
    @IBAction func btnAddItem(_ sender: UIButton) {
        items.append(tfAddItem.text!) // items에 텍스트 필드의 텍스트 값 추가.
        itemsImageFile.append(fileName) 
        tfAddItem.text="" // 텍스트 필드의 내용 지운다.
        _ = navigationController?.popViewController(animated: true) // 루트 뷰 컨트롤러, 즉 테이블 뷰로 돌아감. 
    }
    
    func numberOfComponentsInPickerView(_ pickerView: UIPickerView!) -> Int {
        return PICKER_VIEW_COLUMN
    }

    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }

    func pickerView(_ pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imageView.image = imageArray[row]
        fileName = imageFileName[row]
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
