algoritmo "Índice pluviométtrico"
// Este algoritmo calcula o dia de maior e menor precipitação e as médias pluviométricas das quinzenas de junho.
var
    precipitacao: vetor[1..30] de real
    i: inteiro
    diaMaisChuva, diaMenosChuva: inteiro
    maisChuva, menosChuva: real
    totalQuinzena1, totalQuinzena2: real

inicio
    // Inicialização das variáveis
    diaMaisChuva <- 1
    diaMenosChuva <- 1
    maisChuva <- 0
    menosChuva <- 99999
    totalQuinzena1 <- 0
    totalQuinzena2 <- 0

    // Entrada de dados: precipitação diária
    para i de 1 ate 30 faca
        escreva("Digite a precipitação do dia ",i, " (em mm): ")
        leia(precipitacao[i])

        // Verifica o dia de maior precipitação
        se precipitacao[i] > maisChuva entao
            maisChuva <- precipitacao[i]
            diaMaisChuva <- i
        fimse

        // Verifica o dia de menor precipitação
        se precipitacao[i] < menosChuva entao
            menosChuva <- precipitacao[i]
            diaMenosChuva <- i
        fimse

        // Acumula os totais das quinzenas
        se i <= 15 entao
            totalQuinzena1 <- totalQuinzena1 + precipitacao[i]
        senao
            totalQuinzena2 <- totalQuinzena2 + precipitacao[i]
        fimse
    fimpara

    // Saída de dados
    escreval("O dia que mais choveu foi: ", diaMaisChuva, " com ", maisChuva, " mm.")
    escreval("O dia que menos choveu foi: ", diaMenosChuva, " com ", menosChuva, " mm.")
    escreval("A média pluviométrica da 1ª quinzena é: ", totalQuinzena1 / 15, " mm.")
    escreval("A média pluviométrica da 2ª quinzena é: ", totalQuinzena2 / 15, " mm.")
fimalgoritmo
