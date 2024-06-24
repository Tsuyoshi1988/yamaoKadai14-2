
import UIKit

class TableViewController: UITableViewController {

    let KeyName = "Name"
    let KeyCheck = "Check"
    
    var items: [Dictionary<String,Any>] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.items = [
            [KeyName:"りんご", KeyCheck:false],
            [KeyName:"みかん", KeyCheck:true],
            [KeyName:"バナナ", KeyCheck:false],
            [KeyName:"パイナップル", KeyCheck:true],
        ]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath) as! TableViewCell

        // Configure the cell...
        let item = self.items[indexPath.row]
        
        cell.checkImageView.image = nil
        if item[KeyCheck] as? Bool == true {
            cell.checkImageView.image = UIImage(named: "check")
        }
        
        cell.label1.text = (item[KeyName] as? String) ?? ""
        
        return cell
    }
}
