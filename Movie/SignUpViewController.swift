//
//  SignUpViewController.swift
//  Movie
//
//  Created by 이동기 on 2022/07/06.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailAddressNumber: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var nickname: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var recommendationCode: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var addInfo: UIButton!
    
    @IBOutlet weak var switchBtn: UISwitch!
    
    @IBOutlet weak var settingInfo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailAddressNumber.placeholder = "이메일 주소 또는 전화번호"
        emailAddressNumber.textAlignment = NSTextAlignment.center
        emailAddressNumber.textColor = UIColor.white
        emailAddressNumber.backgroundColor = UIColor.darkGray
        emailAddressNumber.borderStyle = UITextField.BorderStyle.roundedRect
        emailAddressNumber.keyboardType = UIKeyboardType.emailAddress
        emailAddressNumber.returnKeyType = UIReturnKeyType.done
        
        password.placeholder = "비밀번호"
        password.textAlignment = NSTextAlignment.center
        password.backgroundColor = UIColor.darkGray
        password.borderStyle = UITextField.BorderStyle.roundedRect
        password.isSecureTextEntry = true
        password.returnKeyType = UIReturnKeyType.done
        
        nickname.placeholder = "닉네임"
        nickname.textAlignment = NSTextAlignment.center
        nickname.textColor = UIColor.white
        nickname.backgroundColor = UIColor.darkGray
        nickname.borderStyle = UITextField.BorderStyle.roundedRect
        nickname.returnKeyType = UIReturnKeyType.done
        
        
        address.placeholder = "위치"
        address.textAlignment = NSTextAlignment.center
        address.textColor = .yellow
        address.backgroundColor = UIColor.darkGray
        address.borderStyle = UITextField.BorderStyle.roundedRect
        address.returnKeyType = UIReturnKeyType.done
        
        recommendationCode.placeholder = "추천 코드 입력"
        recommendationCode.textAlignment = NSTextAlignment.center
        recommendationCode.textColor = UIColor.white
        recommendationCode.backgroundColor = UIColor.darkGray
        recommendationCode.borderStyle = UITextField.BorderStyle.roundedRect
        recommendationCode.keyboardType = UIKeyboardType.numberPad
        recommendationCode.returnKeyType = UIReturnKeyType.done
        
        signUpButton.backgroundColor = UIColor.white
        signUpButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        signUpButton.setTitle("회원가입", for: UIControl.State.normal)
        signUpButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        addInfo.setTitle("추가 정보 입력", for: .normal)
        addInfo.setTitleColor(UIColor.white, for: UIControl.State.normal)
        addInfo.backgroundColor = UIColor.black
        addInfo.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        addInfo.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        switchBtn.onTintColor = UIColor.red
        switchBtn.thumbTintColor = UIColor.cyan
        switchBtn.backgroundColor = UIColor.lightGray
        switchBtn.layer.cornerRadius = 16
        
        
        settingInfo.backgroundColor = UIColor.darkGray
        settingInfo.textColor = UIColor.white
        settingInfo.font = UIFont.systemFont(ofSize: 15)
        
    }
    @IBAction func tapView(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func tapSignUpBtn(_ sender: Any) {
        if emailAddressNumber.text == "" || password.text == "" {
            settingInfo.text = "이메일 혹은 패스워드는 반드시 입력해야 합니다."
        } else if !settingInfo.text.contains("@") {
            settingInfo.text = "이메일 주소엔 반드시 @가 포함되어야 합니다."
        } else if password.text!.count < 6 {
            settingInfo.text = "비밀번호는 6자리 이상이어야합니다"
        } else {
            settingInfo.text = "회원가입이 완료되었습니다."
        }
        
        view.endEditing(true)
    }
    
}
