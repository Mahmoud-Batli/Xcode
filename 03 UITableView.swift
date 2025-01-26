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
        func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        arrNames.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }//دالتين لتفعيل التنقل بين سطور الجدول
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, view, completion) in
            self.arrNames.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
            completion(true)
            //تفعيل سواب واضافة الازرار
        }
        let favoriteAction = UIContextualAction(style: .normal, title: "Favorite") { (_, _, _) in
        {

        favoriteAction.image =  UIImage(systemName: "heart")
        deleteAction.image = UIImage(systemName: "trash")
        return UISwipeActionsConfiguration(actions: [deleteAction, favoriteAction]
        }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrSections.count
        //عدد السيكشن
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrSections[section]
        //هيدر الجدول
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "\(arrSections[section]) Footer"
        //فوتر الجدول
    }
}
