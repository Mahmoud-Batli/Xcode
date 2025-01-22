import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//كتابة كلاسات الخاصة بالجداول
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      //دالة ادخال البيانات للخلية
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        let product = arrProduct[indexPath.row]
        cell.setupCell(image: product.image, name: product.name, price: product.price, description: product.description)
      //دالة موجودة فى كلاس الخلية
        cell.favTest.tag = indexPath.row
        cell.favTest.addTarget(self, action: #selector(addFev(sender:)), for: .touchUpInside)
      //عند الضغط على الزر تنفيذ الدالة بالاسفل
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProduct.count
      // عدد الخلايا فى الجدول
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
      //ارتفاع الخلية
    }
    @objc
    func addFev(sender: UIButton){
        print("FavButton \(sender.tag)")
        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
    }
}
