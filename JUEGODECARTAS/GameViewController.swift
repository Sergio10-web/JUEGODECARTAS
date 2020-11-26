
import UIKit

class GameViewController: UIViewController {

    var resultado : Int = 0
    var intentos : Int = 0
   
    @IBOutlet weak var boton1: UIButton!
    @IBOutlet weak var boton2: UIButton!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var jugarotravez: UIButton!
    @IBOutlet weak var perdiste: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
           resultado = 0
           
        var numerocomienzoresult = String(resultado)
         
        
        
        boton1.layer.cornerRadius = 10
         
        boton2.layer.cornerRadius = 10

        perdiste.layer.cornerRadius = 10
       
        
        result.layer.cornerRadius = 25
      
    
         result.text = numerocomienzoresult
    
       
  
    }
    
    
    @IBAction func card1(_ sender: Any) {
        
 
       sumaboton1()

        
        
        
    }
    @IBAction func card2(_ sender: Any) {
        

        sumaboton2()
    }
    
    
    
    
    func sumaboton1(){
        let numero : Int = Int(boton1.title(for: .normal) ?? "") ?? 0
        
        let sumaboton1 = numero + resultado
        resultado = sumaboton1
        
        let sumastringresult = String(resultado)
        result.text = sumastringresult
       
        //genero el numero random
        let numerorandom1 = Int.random(in: -10..<10)
        //lo igualamos a string
        let numerostring1 = String(numerorandom1)
        //Lo mostramos en el boto
          boton1.setTitle(numerostring1, for: .normal)
        perder()
      

    }
    func sumaboton2(){
        
         let numero2 : Int = Int(boton2.title(for: .normal) ?? "") ?? 0
        
        let sumaboton2 = numero2 + resultado
        resultado = sumaboton2
        let sumastringresultado2 = String(resultado)
        result.text = sumastringresultado2
    
        let numerorandom2 = Int.random(in: -10..<10)
        let numeroString2 = String(numerorandom2)
        boton2.setTitle(numeroString2, for: .normal)
        
        perder()

        
    }
    @IBAction func jugarotrapartida(_ sender: Any) {
        
        perdiste .isHidden = true
        jugarotravez .isHidden = true
       
      
        resultado = 0
        var numerocomienzoresult = String(resultado)
        result.text = numerocomienzoresult
        
        sumaboton1()
        sumaboton2()
         
        
    }
    func perder (){
  
        if resultado > 11 || resultado < -11{
            
        
            perdiste .isHidden = false
            jugarotravez .isHidden = false
            print("Has perdido ")
           
        }
    
        
    

        
    }

    
    


    
}
