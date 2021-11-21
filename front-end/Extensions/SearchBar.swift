import UIKit

extension UISearchBar {

    var textField : UITextField? {
        if #available(iOS 13.0, *) {
            return self.searchTextField
        } else {
            // Fallback on earlier versions
            return value(forKey: "searchField") as? UITextField
        }
    }
}