class Cards{
    var bankName: String
    var cardNumber: Int
    var bill: Float
    
    init(bankName: String, cardNumber: Int, bill: Float) {
        self.bankName = bankName
        self.cardNumber = cardNumber
        self.bill = bill
    }
    func showInfoCard(){
        print("Ваш баланс - \(bill)")
    }
}
