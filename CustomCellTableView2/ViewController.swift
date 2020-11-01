

import UIKit

class ViewController: UIViewController {

    var countries = ["Afghanistan", "USA", "India", "Canada", "Germany"]
    
    @IBOutlet var countryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange

        countryTableView.delegate = self
        countryTableView.dataSource = self
        
        countryTableView.separatorStyle = .none
        countryTableView.showsVerticalScrollIndicator = false
        
    }
    
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = countryTableView.dequeueReusableCell(withIdentifier: "countryCell") as! CountryTVC
            
            let country = countries[indexPath.row]
            
            cell.countryLbl.text = country
            cell.countryImgView.image = UIImage(named: country)
            
            cell.countryView.layer.cornerRadius = cell.countryView.frame.height / 2
            cell.countryImgView.layer.cornerRadius = cell.countryImgView.frame.height / 2
            
            return cell
        
        }
        
    }
