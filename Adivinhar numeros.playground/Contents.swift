//Descrição: Você vai criar um jogo simples em que o computador escolhe um número aleatório e o jogador tenta adivinhar qual é esse número. O jogo deve fornecer dicas ao jogador, indicando se o número a ser adivinhado é maior ou menor do que o número que eles escolheram. O jogo deve continuar até que o jogador adivinhe corretamente o número.

//Instruções:
//
//Gere um número aleatório entre 1 e 100 que será o número a ser adivinhado.
//Peça ao jogador que insira uma suposição.
//Use um loop (por exemplo, while) para continuar pedindo ao jogador que adivinhe até que eles adivinhem corretamente.
//Dentro do loop, verifique se a suposição do jogador é maior, menor ou igual ao número a ser adivinhado.
//Forneça feedback ao jogador com base na comparação feita no passo anterior.
//Quando o jogador adivinhar corretamente, exiba uma mensagem de parabéns e informe quantas tentativas foram necessárias.
//Permita que o jogador jogue novamente se eles desejarem.

let numeroAleatorio = Int.random(in: 0...100)
var count = 0

print("NUMERO SECRETO: \(numeroAleatorio)")

func comparadorNumeros(numero: Int, suposicao: Int) {
    if suposicao > numero {
        print("Você passou um pouquinho!")
    } else if suposicao < numero {
        print("Opa, ainda pode subir!")
    }
}

print("Adivinhe o número!")
print("Suposição: ")


while let inputUsuario = readLine(), let intUsuario = Int(inputUsuario) {
    if intUsuario == numeroAleatorio {
        print("Sucesso! Você acertou em \(count) tentativas!")
        break
        
    }
    
    comparadorNumeros(numero: numeroAleatorio, suposicao: intUsuario)
    count += 1
    print("Tente de novo: ")
}

print("Sucesso! Você acertou em \(count) tentativas!")





