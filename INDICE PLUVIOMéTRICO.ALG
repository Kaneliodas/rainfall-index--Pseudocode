algoritmo "�ndice pluviom�ttrico"
// Este algoritmo calcula o dia de maior e menor precipita��o e as m�dias pluviom�tricas das quinzenas de junho.
var
    precipitacao: vetor[1..30] de real
    i: inteiro
    diaMaisChuva, diaMenosChuva: inteiro
    maisChuva, menosChuva: real
    totalQuinzena1, totalQuinzena2: real

inicio
    // Inicializa��o das vari�veis
    diaMaisChuva <- 1
    diaMenosChuva <- 1
    maisChuva <- 0
    menosChuva <- 99999
    totalQuinzena1 <- 0
    totalQuinzena2 <- 0

    // Entrada de dados: precipita��o di�ria
    para i de 1 ate 30 faca
        escreva("Digite a precipita��o do dia ",i, " (em mm): ")
        leia(precipitacao[i])

        // Verifica o dia de maior precipita��o
        se precipitacao[i] > maisChuva entao
            maisChuva <- precipitacao[i]
            diaMaisChuva <- i
        fimse

        // Verifica o dia de menor precipita��o
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

    // Sa�da de dados
    escreval("O dia que mais choveu foi: ", diaMaisChuva, " com ", maisChuva, " mm.")
    escreval("O dia que menos choveu foi: ", diaMenosChuva, " com ", menosChuva, " mm.")
    escreval("A m�dia pluviom�trica da 1� quinzena �: ", totalQuinzena1 / 15, " mm.")
    escreval("A m�dia pluviom�trica da 2� quinzena �: ", totalQuinzena2 / 15, " mm.")
fimalgoritmo
