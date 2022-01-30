Algoritmo "Sistema de Gestão de Chamados"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Ana Paula
// Descrição   : Abre chamado, consulta chamados abertos, apaga chamados!
// Autor(a)    : Jairo Nonato da Silva
// Data atual  : 27/01/2022
Var
   // Seção de Declarações das variáveis
   opcao,m:real
   nchamados:real
   chamados:vetor[0..2] de caractere
   finalizado:vetor[0..2] de caractere
   f,sol,mot,set,saida,status:caractere

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   m<-1
   finalizado[0]<-("Não Informado")
   finalizado[1]<-("Não Informado")
   finalizado[2]<-("Não Informado")
   chamados[0]<- ("Não Informado")
   chamados[1]<- ("Não Informado")
   chamados[2]<- ("Não Informado")
   escreval("Bem vindo")
   enquanto m=1 faca
      escreval(" ")
      escreval("1 - Novo Chamado")
      escreval("2 - Chamados Abertos")
      escreval("3 - Finalizar Chamado")
      escreval("4 - Chamados Finalizados")
      escreval("--------------------")
      escreval("")
      se (chamados[0] <> "Não Informado") entao
         status <- ("chamado em andamento")
         escreval (status)
      senao
         status <- ("Não há chamados")
         escreval (status)
      fimse
      escreval(" ")
      escreval("--------------------")
      escreval("Como posso te ajudar?  [1/2/3/4]")
      leia(opcao)
      escolha(opcao)
      caso 1
         limpatela
         escreval("REGISTRO DE NOVO CHAMADO")
         escreval("--------------------")
         escreval("")
         escreval("SOLICITANTE")
         escreval("")
         leia(sol)
         escreval("--------------------")
         escreval("MOTIVO/CASO")
         escreval("")
         leia(mot)
         escreval("--------------------")
         escreval("SETOR")
         escreval("")
         leia(set)
         escreval("--------------------")
         chamados[0]<-sol
         chamados[1]<-mot
         chamados[2]<-set
         limpatela
         escreval("CHAMADO ABERTO COM SUCESSO")
      caso 2
         limpatela
         escreval("ABRINDO NOVO CHAMADO")
         escreval("--------------------")
         escreval("")
         escreval("SOLICITANTE: ", chamados[0])
         escreval("MOTIVO: ", chamados[1])
         escreval("SETOR: ", chamados[2])
         escreval("--------------------")
         escreval("")
      caso 3
         escreval("Tem certeza que deseja finalizar o chamado atual? [S/N]")
         leia(f)
         escolha(f)
         caso "S"
            finalizado[0]<-chamados[0]
            finalizado[1]<-chamados[1]
            finalizado[2]<-chamados[2]
            chamados[0]<- ("Não Informado")
            chamados[1]<- ("Não Informado")
            chamados[2]<- ("Não Informado")
            limpatela
            escreval("CHAMADO FINALIZADO COM SUCESSO")
            escreval("VOLTANDO PARA O MENU")
            escreval("--------------------")
            escreval("")
         caso "N"
            escreval("Voltando para o menu")
         outrocaso
            escreval("Inválido, o chamado não foi encerrado")
         fimescolha
      caso 4
         limpatela
         escreval("CHAMADOS FINALIZADOS")
         escreval("--------------------")
         escreval("")
         escreval("SOLICIANTE: ", finalizado[0])
         escreval("MOTIVO: ", finalizado[1])
         escreval("SETOR: ", finalizado[2])
         escreval("--------------------")
         escreval("")
      outrocaso
         limpatela
         escreval("COMANDO INVÁLIDO!")
         escreval("Poderia repetir?")
         escreval("--------------------")
         escreval("")
         escreval("1 - Novo Chamado")
         escreval("2 - Chamados Abertos")
         escreval("3 - Finalizar Chamado")
         escreval("4 - Chamados Finalizados")
         escreval("--------------------")
         escreval("")
         escreval("Como posso te ajudar?  [1/2/3/4]")
         leia(opcao)

      fimescolha
      escreval("")
      escreval("Deseja cotinuar? [S/N]")
      leia (saida)
      se saida = "S" entao
         escreval("--------------------")
      fimse
      se saida = "N" entao
         limpatela
         escreval("OBRIGADO, ESPERO TER AJUDADO!")
         interrompa
      fimse
      se saida = "s" entao
         escreval("--------------------")
      fimse
      se saida = "n" entao
         limpatela
         escreval("OBRIGADO, ESPERO TER AJUDADO!")
         interrompa
      fimse
   fimenquanto

Fimalgoritmo
