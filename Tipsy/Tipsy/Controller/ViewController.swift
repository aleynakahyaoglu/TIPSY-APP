//
//  ViewController.swift
//  Tipsy
//
//  Created by mac on 28.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var tutarTextField: UITextField!
    @IBOutlet weak var sıfırButton: UIButton!
    @IBOutlet weak var onnButton: UIButton!
    @IBOutlet weak var yirmiButton: UIButton!
    @IBOutlet weak var bolmeNumarasılbl: UILabel!
    @IBOutlet weak var sayac: UIStepper!
    
    
    var bahsis :Double = 0.0
    var kisiSayisi = 0.0
    var tutar : Double = 0.0
    var yuzde = " "
    var sonuc = 0.0
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    /*override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tutarTextField.text = ""
        
    }*/
       

    
    @IBAction func sayac(_ sender: UIStepper) {
        bolmeNumarasılbl.text = "\(Int(sender.value))"
        kisiSayisi = sender.value 
       
        
    }
    
    @IBAction func HesaplaButonu(_ sender: Any) {
        if (tutarTextField.text != ""){  // textFieldın içi boş ise döngüye gir
            
            tutar = Double(tutarTextField.text!)!
            
            switch yuzde{
            case "%0" :
                print("bahşiş verilmez")
            case "%10":
                bahsis = tutar * 0.10
                tutar = tutar + bahsis
                print (tutar)
            case "%20" :
                bahsis = tutar * 0.20
                tutar = tutar + ( tutar * 0.20)
                print (tutar)

                
            default:
                print("secim yap")
                
            }
            sonuc = tutar / kisiSayisi // kişi başı düşeni yazdırır
            print(sonuc)
            
            
        }else{
            print("Lütfen Tutar Giriniz")
        }
        self.performSegue(withIdentifier: "goToSonuc", sender: self)
        tutarTextField.text = "" //sayfa yenilendiğinde textFieldı temizler
        bolmeNumarasılbl.text = "0" //tekrar hesapla butonuna basıldığında stepperın labelini sıfırlar
        sayac.value = 0   //tekrar hesapla butonuna basıldığında stepperı sıfırlar
        
        
            
    }
    @IBAction func oranSecimi(_ sender: UIButton) {
        
        yuzde = sender.currentTitle ?? ""
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //sayfalar arası geçiş
        
        if segue.identifier == "goToSonuc" { //goToSonuc segue nin identifyı
            
            let destinationVC = segue.destination as! HesaplaViewController
            //destinationVC.bahsis = Int(bahsis * 0.10)
            //let sonuc = Int(tutar) / Int(kisiSayisi)
            destinationVC.sonuc = "\(sonuc)"
            destinationVC.bolme = Int(kisiSayisi)
        }
       
   
    
    }}
