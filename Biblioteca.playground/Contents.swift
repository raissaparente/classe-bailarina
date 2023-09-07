struct Tumba {
    var falecido: String
    var anoDeFalecimento: Int?
    var idade: Int?
    var causaDeMorte: String?
}

var cemiterio: [Tumba] = []

func enterrar(falecido: String, anoDeFalecimento: Int?, idade: Int?, causaDeMorte: String?) {
    var tumba = Tumba(falecido: falecido, anoDeFalecimento: anoDeFalecimento, idade: idade, causaDeMorte: causaDeMorte)
    cemiterio.append(tumba)
    print("🪦 \(falecido) foi enterrado.")
}

//func exumar(tumba: Tumba) {
//    if let index = cemiterio.firstIndex(of: tumba.falecido){
//        cemiterio.remove(at: index)
//    }
//}

func indexCemiterio() {
    cemiterio.sort(by: {$0.anoDeFalecimento ?? 0 < $1.anoDeFalecimento ?? 0})
    for tumba in cemiterio {
        var lapide = "\(tumba.falecido.uppercased())"
        if let data = tumba.anoDeFalecimento {
            lapide += " | Falecido em \(data)"
        }
        if let idade = tumba.idade {
            lapide += " aos \(idade) anos"
        }
        if let causa = tumba.causaDeMorte {
            lapide += " | Causa Mortis: \(causa)"
        }
        print(lapide)
    }
}

enterrar(falecido: "Michael Davis", anoDeFalecimento: 2022, idade: nil, causaDeMorte: "Pneumonia")
enterrar(falecido: "Emily Brown", anoDeFalecimento: nil, idade: nil, causaDeMorte: "Afogamento")
enterrar(falecido: "Sophia Lee", anoDeFalecimento: 1965, idade: 65, causaDeMorte: nil)


indexCemiterio()
