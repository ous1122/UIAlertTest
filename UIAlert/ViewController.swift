//
//  ViewController.swift
//  UIAlert
//
//  Created by D7703_13 on 2018. 4. 16..
//  Copyright © 2018년 ous. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func BtAlret(_ sender: Any) {
        let Alert = UIAlertController(title: "눌렀습니다", message: "설정한 시간이 되었어요.", preferredStyle: .alert ) //얼럿을 띄울 창을 설정한다.
        let ok = UIAlertAction(title: "종료", style: .default, handler:{ (action:UIAlertAction) ->Void in self.view.backgroundColor = UIColor.red})
        //얼럿에 나올 버튼 액션을 추가한다. handler구문에 대해서는 주의하여 작성할것
        
        let cancle = UIAlertAction(title: "취소", style: .cancel , handler:{ (action:UIAlertAction) ->Void in self.view.backgroundColor = UIColor.green })
        
        Alert.addAction(ok) //위에 만든 액션을 얼럿에 나올 버튼으로 추가한다.
        Alert.addAction(cancle)
        
        present(Alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

