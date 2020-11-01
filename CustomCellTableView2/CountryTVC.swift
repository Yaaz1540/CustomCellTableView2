
import UIKit

class CountryTVC: UITableViewCell {

    @IBOutlet var countryView: UIView!
    @IBOutlet var countryImgView: UIImageView!
    @IBOutlet var countryLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
