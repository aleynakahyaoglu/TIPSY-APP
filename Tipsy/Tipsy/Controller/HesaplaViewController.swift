import UIKit

class HesaplaViewController: UIViewController {
    
  
    @IBOutlet weak var yazdirmaEkranilbl: UILabel!
    @IBOutlet weak var gosterilenTutarlbl: UILabel!
    @IBOutlet weak var bahsisEkranilbl: UILabel!
    @IBOutlet weak var tekrarHesaplabutonu: UIButton!
    
    var sonuc = " "
    var bahsis = 10
    var bahsisEkrani = " "
    var bolme = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gosterilenTutarlbl.text = sonuc
        bahsisEkranilbl.text = " hesap \(bolme) kişi arasında bölünecek ve toplam \(bahsis) lira bahşiş verilecek."
    }
   

    /*@IBAction func hesaplama(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: self)
    
    }
     */
   
    @IBAction func hesaplama(_ sender: UIButton) {

            self.dismiss(animated: true, completion: nil)
            
        }
        
    }
    
    
    
    

