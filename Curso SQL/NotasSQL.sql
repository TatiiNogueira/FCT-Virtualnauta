 /*Escrever o c�digo com letra maiuscula ou minuscula � indiferente*
 Apenas os nomes das coisas � que tem de ser escritos exatamente da mesma forma*/
 
 /* Criar uma Base de dados
 O Nome pode ser o que quisermos mas n�o pode conter espa�os */
 create database Nome;

 /* Eliminar uma Base de dados
 Em Nome colocamos o nome da Base de Dados que queremos eliminar*/
 drop database Nome;

 /*Restaurar uma Base de Dados
 RECOMENDA��O: Colocar o ficheiro dentro da pasta "C:\Users\Pubblic\Downloads"
 1 - Clicamos com o bot�o direito do rato em Databases
 2 - Selecionamos "Restore DataBase..."
 3 - Clicamos em "Device"
 4 - Clicamos no bot�o "..." que fica no final da linha de "Device"
 5 - Clicamos em "Add"
 6 - Procuramos pelo ficheiro, para isso em "Backup File Location" colocamos o caminho da pasta "C:\Users\Pubblic"
 para selecionarmo o ficheiro clicamos 2x sobre o ficheiro OU clicamos uma vez sobre o ficheiro e depois em "OK"
 7 - Clicamos em "OK" e novamente em "OK"
 8 -Ir� aparecer a mensagem "Database 'Nome_da_Base_de__Dados' restored sucessfully" clicamos em "OK"
 E est� feita a restaura��o da Base de Dados
 */

 /* Retornar todas as colunas de uma tabela
 O * significa todas a colunas*/
 SELECT * FROM [Nome_da_Base_De_Dados][Nome_Tabela]

 /*Ver os dados, fazendo com que n�o apare�a os nomes repetidos*/
 SELECT DISTINCT Nome_da_Coluna FROM [Nome_da_Base_De_Dados][Nome_Tabela]

 /*Saber o n�mero de Rows da tabela
 Se quisere saber o n�mero de Rows mas que n�o conte os valores repetido/duplicados batsa colocar count(DISTINCT e o resto*/
 select COUNT(*) from [Nome_da_Base_De_Dados][Nome_Tabela]

 /*Saber o n�mero de Rows de uma ou v�rias colunas em especifico da tabela
 Se quisere saber o n�mero de Rows mas que n�o conte os valores repetido/duplicados batsa colocar count(DISTINCT e o resto*/
 select COUNT(Nome_da_Coluna, Nome_De_Outra_Coluna,....) from [Nome_da_Base_De_Dados][Nome_Tabela]
      
 /*Between - Significa entre
 Tamb�m podemos utilizar para datas (Formato da data 0000-00-00)*/
 select * from [Nome_da_Base_De_Dados][Nome_Tabela] where Nome_da_Coluna between valor_1 and valor_2
 select * from [Nome_da_Base_De_Dados][Nome_Tabela] where Nome_da_Coluna between data_1 and data_2

 /*IN - Significa igual*/
 select * from [Nome_da_Base_De_Dados][Nome_Tabela] where Nome_da_Coluna IN (Valor_1,Valor_2....)

 /*% - O que vier a seguir do % n�o interessa, ou retorna me tudo o que come�ar por o que eu indiquei
 No exemplo 1 ir� retornar tudo o que come�ar por 'Ar', n�o me interessa o que vem depois
 No exemplo 2 ir� retornar tudo o que tiver no meio 'essa' n�o me interessa o que vem antes nem o que vem depois
 No exemplo 3 ir� retornar tudo o que tiver no meio 'ro', n�o me interessa o que vem antes, mas depois do 'ro' s� pode ter uma letra/numero*/
 select * from [Nome_da_Base_De_Dados][Nome_Tabela] where Nome_da_Coluna like  /*Exemplo1*/ 'Ar%'
																			   /*Exemplo2*/ '%essa%'
																			   /*Exemplo3*/ '%ro_'

/*Atribuir nome a uma tabela*/
/*Inicio do C�digo*/ AS "Nome_que_queremos_dar_�_Coluna" /*Fim do C�digo*/

/*Somar valores*/
select SUM(nome_coluna) from [Nome_da_Base_De_Dados][Nome_Tabela]

/*M�dia dos valores de uma coluna*/
select AVG(nome_coluna) from [Nome_da_Base_De_Dados][Nome_Tabela]

/*UNION - Permite juntar os dados de duas tabela
Junta a primeira coluna que indicamos da tabela 1 e a a primeira coluna que indicamos da tabela 2 na mesma coluna e assim por diante
Mas o datatype das colunas tem de ser o mesmo ou seja se na tabela 1 a primeira coluna que indicamos for inta primeira coluna que indicamos da tabela 2 
tamb�m tem de ser int e assim por diante e apenas junta os dados que n�o s�o repetidos*/
Select nome_coluna1,nome_coluna2, .... from [Nome_da_Base_De_Dados][Nome_Tabela_1]
UNION
Select nome_coluna1,nome_coluna2, .... from [Nome_da_Base_De_Dados][Nome_Tabela_2]
/*Se quiseremos ver todos os dados incluindo os repetidos basta escrevermo � frente de "UNION" "ALL"*/
Select nome_coluna1,nome_coluna2, .... from [Nome_da_Base_De_Dados][Nome_Tabela_1]
UNION ALL
Select nome_coluna1,nome_coluna2, .... from [Nome_da_Base_De_Dados][Nome_Tabela_2]