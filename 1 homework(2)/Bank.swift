class Bank {
    
    static func transaction(from: Client, to: Client) {
        
        print("Выберите карту:")
        
        for (index, card) in from.cards.enumerated() {
            
            print("\(index + 1). \(card.bankName) \(card.cardNumber)")
            
        }
        
        
        
        let vyborIndex = Int(readLine()!)! - 1
        
        let vyborCard = from.cards[vyborIndex]
        
        
        
        print("\(vyborCard.bankName) \(vyborCard.cardNumber) выбран")
        
        print("Введите номер карты получателя:")
        
        
        
        var placeCardNumber = Int(readLine()!)
        
        var placeCard: Cards!
        
        for card in to.cards {
            
            if card.cardNumber == placeCardNumber {
                
                placeCard = card
                
                break
                
            }
            
        }
        
        if placeCard == nil {
            
            print("Транзакция не удалась: карта получателя не найдена")
            
            return
            
        }
        
        print("Получатель: \(to.firstName) \(to.lastName)")
        
        print("Введите сумму:")
        
        
        
        let amount = Float(readLine()!)!
        
        
        
        if amount < vyborCard.bill {
            
            print("Транзакция не удалась: недостаточно средств")
            
            
            
            vyborCard.bill -= amount
            
            placeCard.bill += amount
            
            
            
            print("Транзакция прошла успешно")
            
            
            
        }
        
    }
    
}
