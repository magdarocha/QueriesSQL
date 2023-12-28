-- Selecionar tudo de uma tabela
SELECT * FROM clientes;


-- Selecionar colunas especificas de uma tabela
SELECT Nome, Sexo from clientes;


-- Selecionar colunas especificas e dar um nome a essas colunas
SELECT Nome as "Nome do cliente", Email AS "Email do cliente" FROM clientes;



-- Selecionar apenas N primeiras linhas de uma tabela
SELECT * FROM clientes LIMIT 3;


-- Ordenar uma tabela a partir de uma determinada coluna, de forma ascendente
SELECT * FROM clientes ORDER BY qtd_filhos;


-- Ordenar uma tabela a partir de uma determinada coluna, de forma descendente
SELECT * FROM clientes ORDER BY qtd_filhos DESC;


-- Criar filtros com WHERE, AND , OR
SELECT * FROM clientes where nome = "Ruben";

SELECT * FROM clientes WHERE estado_civil = 'S' AND qtd_filhos = 4;

SELECT * FROM clientes WHERE sexo = 'F' or estado_civil = 'C';

-- Diferente pode ser != ou <> , podemos usar o between 



-- Contar a quantidade total de valores de uma coluna
SELECT COUNT (Nome) FROM clientes;



-- Contar a quantidade total de linhas de uma tabela
SELECT COUNT(*) FROM clientes;


-- Conta a quatidade distinta de uma coluna
SELECT COUNT(DISTINCT escolaridade) FROM clientes;


-- Soma os valores de uma coluna
SELECT SUM(qtd_filhos) FROM clientes;


-- Faz a média dos valores de uma coluna
SELECT AVG(renda_anual) from clientes;


-- Retorna o valor minimo de uma coluna
SELECT MIN(qtd_filhos) FROM clientes;


--Retorna o valor máximo de uma coluna
SELECT MAX(qtd_filhos) FROM clientes;


-- Agrupar colunas (por exemplo eu tenho a contagem de todos os sexos mas quero ter dividido por M e F)
SELECT Sexo, count(*) AS 'quantidade de clientes' FROM clientes GROUP BY Sexo;

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

