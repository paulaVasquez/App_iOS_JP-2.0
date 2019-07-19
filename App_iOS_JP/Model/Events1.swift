import UIKit
struct Events1 {
    //Defines the properties for each Book in the collection
    static let defaultBandera = UIImage(named: "colombia.jpg")!
    var equipos:String
    var score:String
    //Use a default cover if none is set
    var flag:UIImage {
        get {
            return flagToShow ?? Events1.defaultBandera
        }
        set {
            flagToShow = newValue
        }
    }
    private var flagToShow:UIImage? = nil
    init(equipos: String, score: String, flag: UIImage? = nil) {
        self.equipos = equipos
        self.score = score
        self.flagToShow = flag
    }
}
