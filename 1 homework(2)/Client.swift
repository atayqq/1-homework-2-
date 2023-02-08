class Client{
    var firstName: String
    var lastName: String
    var cards: [Cards]

    init(firstName: String, lastName: String, cards: [Cards]) {
        self.firstName = firstName
        self.lastName = lastName
        self.cards = cards
    }
    
    func viewInfo(){
        print("Имя - \(firstName), Фамилие - \(lastName)")
    }
}
