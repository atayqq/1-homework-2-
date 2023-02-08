let card1 = Cards(bankName: "Optima", cardNumber: 4168534242454266, bill: 45324.3)
let card2 = Cards(bankName: "Kyrgyzstan", cardNumber: 9674853234568654 , bill: 31865.4)
let card3 = Cards(bankName: "Halyk", cardNumber: 2602678034512398, bill: 13145.4)

let client1 = Client(firstName: "Atay", lastName: "Kylychbekov", cards: [card1, card2])
let client2 = Client(firstName: "Nursultan", lastName: "Sulaimanov", cards: [card3])

Bank.transaction(from: client1, to: client2)

client1.viewInfo()
client2.viewInfo()

card1.showInfoCard()
card2.showInfoCard()
card3.showInfoCard()
