import Foundation
//Class to handle operations over the books collection
class ScoreManager {
    //Store the books collection
    private lazy var scors:[Events1] = self.loadScors()
    //Store the number of books in the collection
    var scorCount:Int {return scors.count}
    //Get a book from the collection at a specific position
    func getScore(at index:Int)->Events1 {
        return scors[index]
    }
    //Return the books collection
    private func loadScors()->[Events1] {
        //for now, loads a dummy hard-coded books collection
        return sampleScors()
    }
    //Add a book to the collection
    func addBook(_ score:Events1) {
        scors.append(score)
    }
    //Return a dummny collection of books according to Book structure
    private func sampleScors()->[Events1] {
        return [
            Events1(equipos: "Colombia-Argentina", score: "2-0", flag: nil)
            //Events1(equipos: "Colombia-Chile", score: "0-0"),
            //Events1(equipos: "Brasil-Bolivia", score: "2-0")
        ]
    }
}
