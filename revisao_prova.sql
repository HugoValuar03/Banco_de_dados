-- 1. Qual é a lista completa de alunos cadastrados na academia?
select nome from aluno;

-- 2. Quais são os instrutores disponíveis na academia?
select nome from instrutor;

-- 3. Quais são as modalidades oferecidas pela academia?
select nome from modalidade;

-- 4. Quais são as turmas disponíveis para uma determinada modalidade?
select * from turma where idmodalidade = "1";

-- 5. Quais alunos estão matriculados em uma turma específica?
select a.nome from aluno a, matricula m where m.idAluno = a.idAluno and idTurma = "3";

-- 6. Quais são as frequências registradas para um determinado aluno em uma turma?
select f.presente 
from frequencia f, matricula m 
where m.idmatricula = f.idmatricula 
and f.idaluno = "1" 
and m.idturma = "1";

-- 7. Quais são as graduações existentes em uma determinada modalidade?
select faixa from graduacao where idmodalidade ="1";

-- 8. Qual é a lista de alunos que obtiveram uma graduação em uma modalidade específica?
select a.nome from aluno a, graduacao g, alunograduacao ag
where a.idaluno = "1" 
and a.idaluno = ag.idaluno 
and g.idgraduacao = ag.idgraduacao;

-- 9. Quais são os pagamentos registrados para um determinado aluno?
select p.* from pagamento p, aluno a where a.idaluno = "2" and a.idaluno = p.idaluno;

-- 10. Qual é o valor total recebido pela academia em um período específico?
select sum(p.valor) as valor_total from pagamento p where p.data between "2023-05-01" and "2023-06-01";

-- 11. Quais são os alunos que ainda não efetuaram pagamento no mês atual?
select a.nome 
from aluno a, pagamento p 
where ;
