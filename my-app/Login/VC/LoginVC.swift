import UIKit

class LoginVC: UIViewController {
    var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.delete(delegate: self)
        loginScreen?.configTextfieldDelegate(delegate: self)
    }
}

extension LoginVC: LoginScreenProtocol{
    func tappedLoginButton() {
        print("Chegou na VC")
    }
}

extension LoginVC: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return false
    }
}
