import UIKit

class GiaiPT2: UIViewController {
    @IBOutlet weak var a: UITextField!
    @IBOutlet weak var b: UITextField!
    @IBOutlet weak var c: UITextField!
    @IBOutlet weak var ketqua: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func Giaipt(sender: AnyObject) {
        let a = self.a.text.toInt()!
        let b = self.b.text.toInt()!
        let c = self.c.text.toInt()!
        
        var delta = (b * b - 4 * a * c)
        var x1 = (Float(-b) + sqrt(Float(delta))) / (2 * Float(a))
        var x2 = (Float(-b) - sqrt(Float(delta))) / (2 * Float(a))
        var x  = Float(-b) / (2 * Float(a))
        if (a == 0) {
            ketqua.text = "Pt có 1 nghiệm : x = \(Float(-c) / Float(b))"
        }else if(delta == 0) {
            ketqua.text = "Pt có 1 nghiệm : x = \(x)"
        } else if (delta < 0) {
            self.ketqua.text = "Pt đã cho vô nghiệm"
        } else if (delta > 0) {
             self.ketqua.text = "x1 = \(x1) Và x2 = \(x2)\n"
        } else {
            self.ketqua.text = "Có Lỗi"
        }
    }
}