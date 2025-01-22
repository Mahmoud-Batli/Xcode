import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //ينفذ قبل تحميل الواجهة الرئيسية
    }
    override func viewWillAppear(_ animated: Bool) {
        <#code#>
        //ينفذ  قبل ظهور الواجهة
    }
    override func viewDidAppear(_ animated: Bool) {
        <#code#>
        //ينفذ عند ظهور الواجهة
    }
    override func viewWillDisappear(_ animated: Bool) {
        <#code#>
        //ينفذ فبل اختفاء الشاشة
    }
    override func viewDidDisappear(_ animated: Bool) {
        <#code#>
        //ينفذ بعد اختفاء الشاشة
    }
}
