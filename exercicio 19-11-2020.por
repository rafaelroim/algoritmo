/*
* Crie um algoritmo que saia quando o usuário pressionar 99 (por que eu quero... kkkk)
*
* Ele deverá fazer:
* 1 - Cálculo de área de um triangulo
* 2 - Consumo de energia de um terreno cujo consumo da lampada é de 9w por metro quadrado
* 3 - Calcular a média de um aluno e mostrar se foi aprovado ou não (aprovação >= 6.5)
* 4 - Mostrar os pares entre dois valores informados pelo usuário
* 5 - Mostrar os impares entre dois valores informados pelo usuário (somados à cada um 5).
* 99 - Finaliza o programa.
*/

programa
{
	
	funcao inicio()
	{
		inteiro opcao=0, cont=0, n5, n6, troca=0, resto=0
		real base, altura, area, largura, comprimento, n1, n2, n3, n4, media=0.0

		enquanto(opcao !=99)
		{			
			escreva("\nEscolha o que deseja fazer: ")
			escreva("\n(1) Calcular da área de um triângulo")
			escreva("\n(2) Consumo de energia de um terreno em metros quadrado")
			escreva("\n(3) Calcular a média de uma aluno e mostrar se foi aprovado ou não")
			escreva("\n(4) Mostrar os pares entre um intervalo informado pelo usuário")
			escreva("\n(5) Mostrar os impares entre dois valores informados pelo usuário (somando  à cada um 5)")
			escreva("\n(99) Finaliza o programa")
			escreva("\nSua opção é: ")
			leia(opcao)
			se(opcao == 99)
			{
				escreva("\nObrigado por utilizar o nosso programa")
				escreva("\nO programa será encerrado !")
			}
			senao
			{
				se((opcao<1) ou (opcao>6))
				{
					escreva("\nCódigo incorreto, digite novamente um código válido.\n")		
				}
				se(opcao ==1)
				{
					escreva("informe o valor da base do triângulo: ")
					leia(base)
					escreva("Informe o valor da altura do triângulo: ")
					leia(altura)
					area = (base*altura)/2
					escreva("O valor da área do triângulo é: ",area,"\n")
				}
				senao
				{
					se(opcao==2)
					{
						escreva("informe a largura do terreno: ")
						leia(largura)
						escreva("Informe o comprimento do terreno: ")
						leia(comprimento)
						area = largura*comprimento
						escreva("O consumo de energia deste terreno é: ",area*9," watts \n")					
					}
				}
				senao
				{
					se(opcao==3)
					{
					escreva("Informe a nota do primeiro bimestre: ")
					leia(n1)
					escreva("Informe a nota do segundo bimestre: ")
					leia(n2)
					escreva("Informe a nota do terceiro bimestre: ")
					leia(n3)
					escreva("Informe a nota do quarto bimestre: ")
					leia(n4)
					media = (n1+n2+n3+n4)/4
						se(media>=6.5)
						{
							escreva("O aluno foi aprovado")
						}
						senao
						{
							escreva("O aluno foi reprovado")
						}
						
					}
				}
				senao
				{
					se(opcao==4)
					{
					escreva("Informe o primeiro número do intervalo: ")
					leia(n5)
					escreva("Informe o segundo número do intervalo: ")
					leia(n6)	
						se(n5>n6)
						{
							troca = n5
							n5 = n6
							n6 = troca
							cont = n5
						}
							senao
								{
									n5 = n5
									n6 = n6
									cont = n5
								}
							enquanto (cont <= n6)
							{
								resto = cont - (cont/2*2)
								se (resto ==0)
								{
									escreva(cont, " ")
								}
								cont = cont + 1
							}
					}
				}							
				senao
				{
					se(opcao==5)
					{
						escreva("Informe o primeiro número do intervalo: ")
						leia(n5)
						escreva("Informe o segundo número do intervalo: ")
						leia(n6)	
						n5 = n5 + 5
						n6 = n6 + 5	
						se(n5>n6)
						{
							troca = n5
							n5 = n6
							n6 = troca
							cont = n5
						}
							senao
							{
								n5 = n5
								n6 = n6									
								cont = n5
							}
								enquanto (cont <= n6)
								{
									resto = cont - (cont/2*2)
									se (resto !=0)
									{
										escreva(cont, " ")
									}
									cont = cont + 1
								}
					}
				}
			}
		}
	}
}
					
				
					
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3113; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */