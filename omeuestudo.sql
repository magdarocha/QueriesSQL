--SELECT
-- Selecionar tudo de uma tabela
SELECT * FROM clientes;


-- Selecionar colunas especificas de uma tabela
SELECT Nome, Sexo from clientes;


-- Selecionar colunas especificas e dar um nome a essas colunas
SELECT Nome as "Nome do cliente", Email AS "Email do cliente" FROM clientes;


-- Selecionar apenas N primeiras linhas de uma tabela
SELECT * FROM clientes LIMIT 3;


--ORDENAÇÃO
-- Ordenar uma tabela a partir de uma determinada coluna, de forma ascendente
SELECT * FROM clientes ORDER BY qtd_filhos;


-- Ordenar uma tabela a partir de uma determinada coluna, de forma descendente
SELECT * FROM clientes ORDER BY qtd_filhos DESC;


-- Criar filtros com WHERE, AND , OR
SELECT * FROM clientes where nome = "Ruben";

SELECT * FROM clientes WHERE estado_civil = 'S' AND qtd_filhos = 4;

SELECT * FROM clientes WHERE sexo = 'F' OR estado_civil = 'C';
-- Diferente pode ser != ou <> 

-- Operadores BETWEEN e IN
-- No between pomos um intervalo, no in são os valores certos que queremos apresentar
SELECT clientes WHERE qtd_filhos BETWEEN 1 AND 3;
SELECT clientes WHERE qtd_filhos in (0,1,2);

-- Operador LIKE que significa semelhante
-- % substitui nenhum ou vários caracteres. Pode estar em qualquer sitio, após a letra ou antes. %p% - letra a em qualquer sitio %p - letra a no final 
-- O _ substitui uma letra (1 caracter apenas)
SELECT nome FROM clientes WHERE Email LIKE 'p%';
-- Significa selecionar a coluna nome da tabela clientes onde o email começe por P

--CONTAGEM
-- Contar a quantidade total de valores de uma coluna
SELECT COUNT (Nome) FROM clientes;


-- Contar a quantidade total de linhas de uma tabela
SELECT COUNT(*) FROM clientes;


-- Conta a quatidade distinta de uma coluna
SELECT COUNT(DISTINCT escolaridade) FROM clientes;

-- Mostra os valores que são repetidos apenas uma vez. Por exemplo várias pessoas têm 2 filhos, vamos apenas mostrar uma vez o número 2
SELECT DISCTINT qtd_filhos FROM clientes;


--SOMA
-- Soma os valores de uma coluna
SELECT SUM(qtd_filhos) FROM clientes;


--MÉDIA
-- Faz a média dos valores de uma coluna
SELECT AVG(renda_anual) from clientes;

-- O MENOR
-- Retorna o valor minimo de uma coluna
SELECT MIN(qtd_filhos) FROM clientes;


--O MAIOR
--Retorna o valor máximo de uma coluna
SELECT MAX(qtd_filhos) FROM clientes;

--AGRUPAR
-- Agrupar colunas (por exemplo eu tenho a contagem de todos os sexos mas quero ter dividido por M e F)
SELECT Sexo, count(*) AS 'quantidade de clientes' FROM clientes GROUP BY Sexo;

--MOSTRAR OS AGRUPADOS COM CERTAS CARACTERISTICAS
SELECT sexo, count(*) FROM clientes GROUP BY sexo HAVING count(sexo) >=10
-- Via mostrar os sexos agrupados mas so os que tiverem mais de 10


--EXEMPLO
--Fazer uma consulta que tenha como resultado todas as colunas da tabela de pedidos e as colunas Loja, Gerente e telefone da tabela Lojas
  --Tabela A -- Tabela Fato -- Tabela Pedidos
  -- Tabela B (para complementar as infos da tabela A) -- Tabela Dimensão-- Tabela Lojas
  -- Chave Primária -- ID_Loja
  -- Chave estrangeira -- ID_Loja

SELECT 
  pedidos.*,
  lojas.Loja,
  lojas.Gerente,
  lojas.Telefone
FROM pedidos
INNER JOIN lojas
  ON pedidos.ID_Loja = lojas.ID_Loja;

-- O inner join só une os dados que tenham ligação entre eles. Pode ser escrito só JOIN

-- OUTER JOIN Considera todos os parâmetros mesmo os que não têm ligação entre eles. Dependendo do que tabela queremos dar preferência pomos LEFT OUTER JOIN ou LEFT JOIN ou RIGHT OUTER JOIN / RIGHT JOIN

