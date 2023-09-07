import Foundation

func gerarNumeroAleatorio() -> Int {
    return Int(arc4random_uniform(100)) + 1
}

func jogoDeAdivinhacao() {
    var continuarJogando = true

    print("Bem-vindo ao Jogo de Adivinhação de Números!")
    
    repeat {
        let numeroSecreto = gerarNumeroAleatorio()
        var tentativas = 0

        print("Tente adivinhar o número secreto entre 1 e 100.")

        while true {
            print("Digite sua suposição:")

            if let input = readLine(), let suposicao = Int(input) {
                if suposicao < 1 || suposicao > 100 {
                    print("Por favor, insira um número entre 1 e 100.")
                } else {
                    tentativas += 1

                    if suposicao < numeroSecreto {
                        print("O número secreto é maior. Tente novamente.")
                    } else if suposicao > numeroSecreto {
                        print("O número secreto é menor. Tente novamente.")
                    } else {
                        print("Parabéns! Você adivinhou o número secreto \(numeroSecreto) em \(tentativas) tentativas.")
                        break
                    }
                }
            } else {
                print("Por favor, insira um número válido.")
            }
        }

        print("Deseja jogar novamente? (Digite 'sim' para jogar novamente ou qualquer outra coisa para sair):")
        if let reiniciar = readLine(), reiniciar.lowercased() != "sim" {
            continuarJogando = false
        }
    } while continuarJogando
}

jogoDeAdivinhacao()

