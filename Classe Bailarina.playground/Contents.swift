//EXERCICIO SWIFT CLASSES - RAISSA BRUNA PARENTE

class Dancarino {
    var nome: String
    var estudio: String
    var numeroGirosConsecutivos: Int
    
    init(nome: String, estudio: String, numeroGirosConsecutivos: Int){
        self.nome = nome
        self.estudio = estudio
        self.numeroGirosConsecutivos = numeroGirosConsecutivos
    }
    
    var identificacao: String {
        return "\(nome) dança no estúdio \(estudio)."
    }
    
    func eBomDeGiro() {
        if numeroGirosConsecutivos <= 1 {
            print("Continue treinando! Foco no giro duplo!")
        } else {
            print("Você consegue girar \(numeroGirosConsecutivos)! Parabéns!")
        }
    }
}

//lista dos 6 metodos de ensino de ballet internacionalmente reconhecidos
enum metodosBale {
    case Vaganova
    case Ballanchine
    case RoyalAcademy
    case Cecchetti
    case ÉcoleFrançaise
    case Bournonville
}

//lista dos estilos de bale ao longo dos anos
enum estilosBale {
    case Classico
    case Romantico
    case Neoclassico
    case Contemporaneo
}
  
class Bailarina: Dancarino {
    var metodoBale: metodosBale
    var balesDancados: [String: estilosBale]

    init(nome: String, estudio: String, numeroGirosConsecutivos: Int, metodoBale: metodosBale, balesDancados: [String: estilosBale]) {
        self.metodoBale = metodoBale
        //filtro melhor usando tipo customizado ou dicionario
        self.balesDancados = balesDancados
        super.init(nome: nome, estudio: estudio, numeroGirosConsecutivos: numeroGirosConsecutivos)
    }
    
    //tag de identificacao da Bailarina
    override var identificacao: String {
        return "\(nome) dança \(metodoBale) na companhia \(estudio)."
    }
    
    //funcao que recebe a quantidade de giros pela propriedade numeroGirosConsecutivos e retorna uma string "julgando" o quao bom de giros a Bailarina é
    override func eBomDeGiro() {
        if numeroGirosConsecutivos <= 3 {
            print("Patético! Trabalhe o seu equilibrio!")
        }else if numeroGirosConsecutivos > 3, numeroGirosConsecutivos < 32 {
            print("Hmm, vejo que você consegue girar \(numeroGirosConsecutivos) vezes. Muito bem, agora a meta são os 32 fouettés.")
        } else {
            print("\(numeroGirosConsecutivos) giros! Finalmente alguém de qualidade!")
        }
    }
    
    //funcao que recebe um estilo de bale do enum estilosBale e retorna um array com todos os bales no estilo escolhido
    func balesDoEstilo(estiloEscolhido: estilosBale) -> [String]{
        let bales = balesDancados.filter {(_, estilo) in
            return estilo == estiloEscolhido
        }.map {(bale, _) in
            return bale
        }
        return bales
    }
}

//instanciando bailarina zakharova
let zakharova = Bailarina(nome: "Svetlana", estudio: "Mariinsky", numeroGirosConsecutivos: 34, metodoBale: metodosBale.Vaganova, balesDancados: ["Swan Lake" : estilosBale.Classico, "Giselle": estilosBale.Romantico, "Coppelia": estilosBale.Romantico, "The Nutcracker": estilosBale.Classico])

print(zakharova.identificacao)
zakharova.eBomDeGiro()
let zakharovaRomantico = zakharova.balesDoEstilo(estiloEscolhido: estilosBale.Classico)
print(zakharovaRomantico)
