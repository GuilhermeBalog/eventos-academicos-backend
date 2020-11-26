insert into localizacao(nome, endereco, valor) values ('EACH', 'Rua Arlindo Béttio, 1000 - Ermelino Matarazzo', 0.00);
insert into localizacao(nome, endereco, valor) values ('CEAGESP', 'Rua Jorge Brito, 500 - Alves Castro', 500.99);
insert into localizacao(nome, endereco, valor) values ('Instituto de Física', 'Avenida das Indias, 750 - Catuape', 1000.00);
insert into localizacao(nome, endereco, valor) values ('MASP', 'Rua Serra de Pija, 230 - Catuape', 12000.00);
insert into localizacao(nome, endereco, valor) values ('Museu de História Brasileira', 'Avenida Conde de Botoraí, 5458- Dimgomes', 450.00);

insert into evento(nome, edicao, tema, valorinscricao, fk_localizacao_id) values ('SSI', 1, 'Semana de Sistemas de Informação', 25.5, 1);
insert into evento(nome, edicao, tema, valorinscricao, fk_localizacao_id) values ('Encontro de pesquisadores', 5, 'Pesquisa científica', 50.25, 2);
insert into evento(nome, edicao, tema, valorinscricao, fk_localizacao_id) values ('SGPP', 7, 'Semana de gestão de políticas públicas', 2.5, 4);
insert into evento(nome, edicao, tema, valorinscricao, fk_localizacao_id) values ('SMKT', 10, 'Semana de marketing', 100.99, 2);
insert into evento(nome, edicao, tema, valorinscricao, fk_localizacao_id) values ('SCN', 1, 'Semana de Ciências da Natureza', 5.60, 1);

insert into entidade(nome, endereco, tipoentidade) values ('EACH', 'Rua Arlindo Béttio, 1000 - Ermelino Matarazzo', 'Universidade');
insert into entidade(nome, endereco, tipoentidade) values ('UNIFESP', 'Rua Sena Madureira, 1500 - Vila Clementino', 'Universidade');
insert into entidade(nome, endereco, tipoentidade) values ('FAPESP', 'Rua Pio XI, 1500 - Alto da Lapa', 'Fundação');
insert into entidade(nome, endereco, tipoentidade) values ('UFABC', 'Avenida dos Estados, 5001 - Bangú,', 'Universidade');
insert into entidade(nome, endereco, tipoentidade) values ('IFSP', 'Rua Pedro Vicente, 625 - Canindé', 'Instituto Fereral');

insert into patrocinio(categoria, valor, beneficios) values ('Prata', 10000.00, 'Anúncio, banner, espaço personalizado');
insert into patrocinio(categoria, valor, beneficios) values ('Bronze', 5000.00, 'Anúncio');
insert into patrocinio(categoria, valor, beneficios) values ('Bronze', 7000.00, 'Anúncio, banner');
insert into patrocinio(categoria, valor, beneficios) values ('Ouro', 20000.00, 'Anúncio, banner, espaço personalizado, 2 minutos entre atividades');
insert into patrocinio(categoria, valor, beneficios) values ('Prata', 12000.00, 'Anúncio, banner, espaço personalizado, 1 minutos entre atividades');

insert into entidadepatrocinaevento(fk_entidade_id, fk_evento_id, fk_patrocinio_id) values (1, 1, 1);
insert into entidadepatrocinaevento(fk_entidade_id, fk_evento_id, fk_patrocinio_id) values (2, 2, 2);
insert into entidadepatrocinaevento(fk_entidade_id, fk_evento_id, fk_patrocinio_id) values (3, 3, 3);
insert into entidadepatrocinaevento(fk_entidade_id, fk_evento_id, fk_patrocinio_id) values (4, 4, 4);
insert into entidadepatrocinaevento(fk_entidade_id, fk_evento_id, fk_patrocinio_id) values (5, 5, 5);

insert into entidaderealizaevento(fk_evento_id, fk_entidade_id) values (1, 1);
insert into entidaderealizaevento(fk_evento_id, fk_entidade_id) values (2, 2);
insert into entidaderealizaevento(fk_evento_id, fk_entidade_id) values (3, 3);
insert into entidaderealizaevento(fk_evento_id, fk_entidade_id) values (4, 4);
insert into entidaderealizaevento(fk_evento_id, fk_entidade_id) values (5, 5);

insert into entidadepromoveevento(fk_entidade_id, fk_evento_id) values (1, 1);
insert into entidadepromoveevento(fk_entidade_id, fk_evento_id) values (1, 1);
insert into entidadepromoveevento(fk_entidade_id, fk_evento_id) values (2, 2);
insert into entidadepromoveevento(fk_entidade_id, fk_evento_id) values (3, 3);
insert into entidadepromoveevento(fk_entidade_id, fk_evento_id) values (4, 4);

insert into espaco(descricao, localizacao, capacidademax, fk_localizacao_id) values ('Auditório', 'Prédio A2, sala 05', 200, 1);
insert into espaco(descricao, localizacao, capacidademax, fk_localizacao_id) values ('Sala de Reunião', '7° andar, sala 20', 200, 2);
insert into espaco(descricao, localizacao, capacidademax, fk_localizacao_id) values ('Teatro', '8° andar, bloco 2', 500, 3);
insert into espaco(descricao, localizacao, capacidademax, fk_localizacao_id) values ('Anfiteatro', 'Sala 04', 240, 4);
insert into espaco(descricao, localizacao, capacidademax, fk_localizacao_id) values ('Salão de festas', 'Térreo', 400, 5);

insert into receitas(descricao, valor, fk_evento_id) values ('Venda de copos personalizados', 250.00, 1);
insert into receitas(descricao, valor, fk_evento_id) values ('Venda de cursos', 1000.00, 2);
insert into receitas(descricao, valor, fk_evento_id) values ('Venda de mentorias', 750.00, 3);
insert into receitas(descricao, valor, fk_evento_id) values ('Venda de viagem de campo', 747.50, 4);
insert into receitas(descricao, valor, fk_evento_id) values ('Venda de camisas', 505.33, 5);

insert into despesas(valor, descricao, fk_evento_id) values (450.00, 'Coffee break', 1);
insert into despesas(valor, descricao, fk_evento_id) values (740.00, 'Material', 3);
insert into despesas(valor, descricao, fk_evento_id) values (220.00, 'Brindes', 2);
insert into despesas(valor, descricao, fk_evento_id) values (100.00, 'Emergência', 4);
insert into despesas(valor, descricao, fk_evento_id) values (478.00, 'Coffee break', 5);

insert into pessoas(nome, idade, sexo) values ('Jorge Amadeu Britto', 25, true);
insert into pessoas(nome, idade, sexo) values ('Janaina Petusk Pontes', 45, false);
insert into pessoas(nome, idade, sexo) values ('Lorena Julya Almeida', 19, false);
insert into pessoas(nome, idade, sexo) values ('Trianda Souza Felides', 26, true);
insert into pessoas(nome, idade, sexo) values ('Marcelly Filha de Cabral', 65, false);
insert into pessoas(nome, idade, sexo) values ('Alexandre Fernandes Pinto', 47, true);
insert into pessoas(nome, idade, sexo) values ('Ketlleyn Portugal', 29, false);
insert into pessoas(nome, idade, sexo) values ('João Marcelo Junior', 17, true);
insert into pessoas(nome, idade, sexo) values ('Larissa Marcel Dantas', 27, false);
insert into pessoas(nome, idade, sexo) values ('Lucas Pires Tolentinho', 23, true);
insert into pessoas(nome, idade, sexo) values ('Sarah Solano Reis', 24, false);
insert into pessoas(nome, idade, sexo) values ('Lorelai Gil Brant', 55, false);
insert into pessoas(nome, idade, sexo) values ('Ricardo Jor Ilo', 47, true);
insert into pessoas(nome, idade, sexo) values ('Ulisses Lopes Silva', 35, true);
insert into pessoas(nome, idade, sexo) values ('Aline Tiara Miranda', 24, false);
insert into pessoas(nome, idade, sexo) values ('Rui Bartolomeu', 33, true);
insert into pessoas(nome, idade, sexo) values ('Valentina Patricia Kourtney', 30, false);
insert into pessoas(nome, idade, sexo) values ('Romeu Yashu Hi', 68, true);
insert into pessoas(nome, idade, sexo) values ('Yasmin Rodrigues', 45, false);
insert into pessoas(nome, idade, sexo) values ('Wellignton Freire Ruas', 24, true);

insert into pessoaresponsavelentidade(fk_pessoas_id, fk_entidade_id) values (1, 1);
insert into pessoaresponsavelentidade(fk_pessoas_id, fk_entidade_id) values (2, 2);
insert into pessoaresponsavelentidade(fk_pessoas_id, fk_entidade_id) values (3, 3);
insert into pessoaresponsavelentidade(fk_pessoas_id, fk_entidade_id) values (4, 4);
insert into pessoaresponsavelentidade(fk_pessoas_id, fk_entidade_id) values (5, 5);

insert into equipeseguranca(nivel, periodo, empresa, fk_evento_id) values (1, 'Matutino', 'SeguraEvento Coop', 1);
insert into equipeseguranca(nivel, periodo, empresa, fk_evento_id) values (1, 'Diurno', 'Special Security', 2);
insert into equipeseguranca(nivel, periodo, empresa, fk_evento_id) values (2, 'Noturno', 'Porto Seguro', 2);
insert into equipeseguranca(nivel, periodo, empresa, fk_evento_id) values (3, 'Noturno', 'Porto Seguro', 3);
insert into equipeseguranca(nivel, periodo, empresa, fk_evento_id) values (3, 'Noturno', 'Porto Seguro', 4);
insert into equipeseguranca(nivel, periodo, empresa, fk_evento_id) values (2, 'Diurno', 'Segurança Sempre', 5);

insert into pessoaparticipaequipeseguranca(fk_pessoas_id, fk_equipe) values(15, 1);
insert into pessoaparticipaequipeseguranca(fk_pessoas_id, fk_equipe) values(16, 2);
insert into pessoaparticipaequipeseguranca(fk_pessoas_id, fk_equipe) values(17, 3);
insert into pessoaparticipaequipeseguranca(fk_pessoas_id, fk_equipe) values(18, 4);
insert into pessoaparticipaequipeseguranca(fk_pessoas_id, fk_equipe) values(19, 4);
insert into pessoaparticipaequipeseguranca(fk_pessoas_id, fk_equipe) values(20, 5);

insert into ocorrencia(descricao, gravidade, data, horario, local, fk_equipe) values ('Criança caiu no chão enquanto corria', 'Simples', '2020-06-07', '14:00:00','Vão dos auditórios', 1);
insert into ocorrencia(descricao, gravidade, data, horario, local, fk_equipe) values ('Homem se cortou durante workshop', 'Médio', '2020-03-01', '14:00:00', 'Laboratório 02', 2);
insert into ocorrencia(descricao, gravidade, data, horario, local, fk_equipe) values ('Discussão entre duas pessoas', 'Médio', '2020-09-26', '14:00:00', 'Pátio', 3);
insert into ocorrencia(descricao, gravidade, data, horario, local, fk_equipe) values ('Mulher desmaiou e precisou de atendimento médico', 'Grave', '2020-03-01', '14:00:00', 'Auditório verde', 4);
insert into ocorrencia(descricao, gravidade, data, horario, local, fk_equipe) values ('Homem apresentou febra alta e não utilizava máscara', 'Muito grave', '2020-05-06', '14:00:00', 'Portaria', 5);

insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (1, 1, '2020-02-20');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (1, 2, '2020-02-10');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (1, 3, '2020-02-12');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (1, 4, '2020-02-17');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (1, 5, '2020-02-13');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (2, 6, '2020-03-22');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (2, 7, '2020-04-10');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (2, 8, '2020-01-22');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (2, 9, '2020-02-25');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (2, 10, '2020-03-13');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (3, 11, '2020-03-01');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (3, 12, '2020-02-05');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (3, 13, '2020-02-06');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (3, 14, '2020-01-27');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (3, 1, '2020-02-13');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (4, 2, '2020-02-20');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (4, 3, '2020-02-10');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (4, 4, '2020-02-12');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (4, 5, '2020-02-17');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (4, 6, '2020-02-13');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (5, 7, '2020-02-20');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (5, 8, '2020-02-06');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (5, 9, '2020-02-02');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (5, 10, '2020-02-14');
insert into pessoaparticipaevento(fk_evento_id, fk_pessoas_id, datacompra) values (5, 11, '2020-02-23');

insert into anuncio(tipo, descricao, fk_evento_id, fk_entidade_id) values ('Banner', 'Serão colocados banners nos corredores do prédio do evento', 1, 2);
insert into anuncio(tipo, descricao, fk_evento_id, fk_entidade_id) values ('Outdoor', 'Na semana do evento, a cidade será decorada com outdoors', 2, 3);
insert into anuncio(tipo, descricao, fk_evento_id, fk_entidade_id) values ('Stand', 'Durante o evento, a entidade poderá ter um Stand no prédio dos auditórios', 3, 4);
insert into anuncio(tipo, descricao, fk_evento_id, fk_entidade_id) values ('Stand', 'Durante o evento, a entidade poderá ter um Stand no prédio da biblioteca', 4, 2);
insert into anuncio(tipo, descricao, fk_evento_id, fk_entidade_id) values ('Outdoor', 'Durante o evento, a rua do local terá 3 outdoors promovendo a marca', 4, 5);

insert into divulgacao(tipo, descricao, fk_evento_id) values ('Digital', 'Serão feitas publicações para divulgação das palestras do evento', 1);
insert into divulgacao(tipo, descricao, fk_evento_id) values ('Física', 'Serão colocados outdoors pela cidade', 2);
insert into divulgacao(tipo, descricao, fk_evento_id) values ('Física', 'Serão colocados banners em outros eventos a serem decididos', 3);
insert into divulgacao(tipo, descricao, fk_evento_id) values ('Digital', 'Serão feitas publicações com tom mais humorístico para atrair um público alvo mais novo', 4);
insert into divulgacao(tipo, descricao, fk_evento_id) values ('Físico', 'Serão feitos anúncios em jornais', 5);

insert into meiodedivulgacao(descricao) values ('Facebook, Instagram');
insert into meiodedivulgacao(descricao) values ('Cidade');
insert into meiodedivulgacao(descricao) values ('Unifesp, MASP');
insert into meiodedivulgacao(descricao) values ('Facebook');
insert into meiodedivulgacao(descricao) values ('Jornais');

insert into divulgadoem(fk_meio, fk_divulgacao_id) values (1, 1);
insert into divulgadoem(fk_meio, fk_divulgacao_id) values (2, 2);
insert into divulgadoem(fk_meio, fk_divulgacao_id) values (3, 3);
insert into divulgadoem(fk_meio, fk_divulgacao_id) values (4, 4);
insert into divulgadoem(fk_meio, fk_divulgacao_id) values (5, 5);

insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (90, 25.00, 'Jovens', 1); /*workshop 1-5*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (90, 30.00, 'Adultos', 2); /*workshop 1-5*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (60, 0.00, 'Livre', 3); /*workshop 1-5*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (30, 0.00, 'Livre', 4); /*workshop 1-5*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (30, 10.00, 'Mulheres', 5); /*workshop 1-5*/

insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (45, 0.00, 'Organizadores', 1); /*reuniao 6-10*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (45, 0.00, 'Pesquisadores', 2); /*reuniao 6-10*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (45, 0.00, 'Organizadores', 3); /*reuniao 6-10*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (45, 0.00, 'Organizadores', 4); /*reuniao 6-10*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (45, 0.00, 'Organizadores', 5); /*reuniao 6-10*/

insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (30, 0.00, 'Programadores', 1); /*tutorial 11-15*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (45, 0.00, 'Pesquisadores', 2); /*tutorial 11-15*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (50, 0.00, 'Pesquisadores', 3); /*tutorial 11-15*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (30, 0.00, 'Empresários', 4); /*tutorial 11-15*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (30, 0.00, 'Cientistas', 5); /*tutorial 11-15*/

insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (90, 30.00, 'Programadores', 1); /*palestra 16-20*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (120, 60.00, 'Pesquisadores', 2); /*palestra 16-20*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (60, 0.00, 'Docentes', 3); /*palestra 16-20*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (45, 120.00, 'Empresários', 4); /*palestra 16-20*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (30, 0.00, 'Cientistas', 5); /*palestra 16-20*/

insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (180, 0.00, 'Todos', 1); /*atividade social 21-25*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (180, 0.00, 'Todos', 1); /*atividade social 21-25*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (180, 0.00, 'Todos', 3); /*atividade social 21-25*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (180, 0.00, 'Todos', 4); /*atividade social 21-25*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (180, 0.00, 'Todos', 5); /*atividade social 21-25*/

insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (180, 50.00, 'Todos', 1); /*concurso 26-30*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (180, 50.00, 'Todos', 2); /*concurso 26-30*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (180, 30.00, 'Todos', 3); /*concurso 26-30*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (180, 90.00, 'Todos', 4); /*concurso 26-30*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (180, 90.00, 'Todos', 5); /*concurso 26-30*/

insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (120, 0.00, 'Docentes, alunos e pesquisadores', 1); /*sessão apresentação de artigo 31-35*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (120, 0.00, 'Docentes, alunos e pesquisadores', 2); /*sessão apresentação de artigo 31-35*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (120, 0.00, 'Docentes, alunos e pesquisadores', 3); /*sessão apresentação de artigo 31-35*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (120, 0.00, 'Docentes, alunos e pesquisadores', 4); /*sessão apresentação de artigo 31-35*/
insert into atividade(duracao, valorinscricao, publicoalvo, fk_evento_id) values (120, 0.00, 'Docentes, alunos e pesquisadores', 5); /*sessão apresentação de artigo 31-35*/

insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (1, 1, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (2, 1, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (3, 1, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (6, 2, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (7, 2, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (8, 2, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (11, 3, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (12, 3, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (13, 3, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (4, 4, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (5, 4, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (6, 4, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (7, 5, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (8, 5, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (9, 5, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (5, 6, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (4, 6, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (1, 6, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (10, 7, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (9, 7, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (8, 7, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (11, 8, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (12, 8, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (14, 8, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (2, 9, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (6, 9, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (4, 9, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (7, 10, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (8, 10, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (10, 10, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (1, 11, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (2, 11, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (3, 11, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (6, 12, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (7, 12, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (8, 12, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (1, 13, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (13, 13, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (14, 13, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (3, 14, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (5, 14, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (4, 14, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (11, 15, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (9, 15, 'Ministrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (10, 15, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (5, 16, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (2, 16, 'Palestrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (1, 16, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (7, 17, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (10, 17, 'Palestrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (6, 17, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (11, 18, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (12, 18, 'Palestrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (1, 18, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (3, 19, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (2, 19, 'Palestrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (4, 19, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (7, 20, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (9, 20, 'Palestrante');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (8, 20, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (5, 21, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (2, 21, 'Organizador');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (1, 21, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (7, 22, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (10, 22, 'Organizador');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (6, 22, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (11, 23, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (12, 23, 'Organizador');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (1, 23, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (3, 24, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (2, 24, 'Organizador');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (4, 24, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (7, 25, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (9, 25, 'Organizador');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (8, 25, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (5, 26, 'Jurado');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (2, 26, 'Competidor');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (3, 26, 'Competidor');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (7, 27, 'Jurado');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (8, 27, 'Competidor');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (9, 27, 'Competidor');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (11, 28, 'Jurado');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (14, 28, 'Competidor');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (1, 28, 'Competidor');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (3, 29, 'Jurado');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (2, 29, 'Competidor');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (6, 29, 'Competidor');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (7, 30, 'Jurado');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (10, 30, 'Competidor');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (8, 30, 'Competidor');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (5, 31, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (2, 31, 'Apresentador');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (3, 31, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (7, 32, 'Apresentador');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (8, 32, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (9, 32, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (11, 33, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (14, 33, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (1, 33, 'Apresentador');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (3, 34, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (2, 34, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (6, 34, 'Apresentador');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (7, 35, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (10, 35, 'Ouvinte');
insert into pessoaparticipaatividade(fk_pessoas_id, fk_atividade_id, papel) values (8, 35, 'Apresentador');

insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (1, 1, '2020-06-07');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (2, 2, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (3, 3, '2020-09-26');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (4, 4, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (5, 5, '2020-05-06');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (6, 1, '2020-06-07');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (7, 2, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (8, 3, '2020-09-26');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (9, 4, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (10, 5, '2020-05-06');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (11, 1, '2020-06-07');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (12, 2, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (13, 3, '2020-09-26');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (14, 4, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (15, 5, '2020-05-06');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (16, 1, '2020-06-07');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (17, 2, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (18, 3, '2020-09-26');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (19, 4, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (20, 5, '2020-05-06');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (21, 1, '2020-06-07');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (22, 2, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (23, 3, '2020-09-26');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (24, 4, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (25, 5, '2020-05-06');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (26, 1, '2020-06-07');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (27, 2, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (28, 3, '2020-09-26');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (29, 4, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (30, 5, '2020-05-06');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (31, 1, '2020-06-07');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (32, 2, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (33, 3, '2020-09-26');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (34, 4, '2020-03-01');
insert into atividaderealizadaemespaco(fk_atividade_id, fk_espaco_id, data) values (35, 5, '2020-05-06');

insert into workshop(tema, fk_atividade_id) values ('Arduino', 1);
insert into workshop(tema, fk_atividade_id) values ('Como escrever um bom artigo cientifico', 2);
insert into workshop(tema, fk_atividade_id) values ('Gestão de Políticas', 3);
insert into workshop(tema, fk_atividade_id) values ('Boas práticas de marketing', 4);
insert into workshop(tema, fk_atividade_id) values ('Cuidando do planeta', 5);

insert into reuniao(objetivo, fk_atividade_id) values ('Verificar andamento do evento', 6);
insert into reuniao(objetivo, fk_atividade_id) values ('Discutir políticas de desenvolvimento de artigos', 7);
insert into reuniao(objetivo, fk_atividade_id) values ('Verificar andamento do evento', 8);
insert into reuniao(objetivo, fk_atividade_id) values ('Verificar andamento do evento', 9);
insert into reuniao(objetivo, fk_atividade_id) values ('Verificar andamento do evento', 10);

insert into tutorial(tema, fk_atividade_id) values ('Programação em Python', 11);
insert into tutorial(tema, fk_atividade_id) values ('Como apresentar um artigo?', 12);
insert into tutorial(tema, fk_atividade_id) values ('Debatendo políticas', 13);
insert into tutorial(tema, fk_atividade_id) values ('Conquistando clientes', 14);
insert into tutorial(tema, fk_atividade_id) values ('Políticas verdes', 15);

insert into palestras(afiliacao, minicurriculo, nomepalestra, fk_atividade_id) values ('FAPESP', 'Doutor em Inteligência Artificial pela USP', 'IoT no dia a dia', 16);
insert into palestras(afiliacao, minicurriculo, nomepalestra, fk_atividade_id) values ('FAPESP', 'Doutor em Letras pela UFRJ', 'Divulgação científica', 17);
insert into palestras(afiliacao, minicurriculo, nomepalestra, fk_atividade_id) values ('FAPESP', 'Pós doutorado em ensino infantil pela USP', 'Didática no ensino de crianças com autismo', 18);
insert into palestras(afiliacao, minicurriculo, nomepalestra, fk_atividade_id) values ('FAPESP', 'Mestrando em Marketing na USP', 'O marketing das cores', 19);
insert into palestras(afiliacao, minicurriculo, nomepalestra, fk_atividade_id) values ('FAPESP', 'Livre docente em medicina prática e pandemias pela USP', 'A importância da pesquisa no combate de pandemias', 20);

insert into atividadesocial(tipo, fk_atividade_id) values ('Arrecadação', 21);
insert into atividadesocial(tipo, fk_atividade_id) values ('Arrecadação', 22);
insert into atividadesocial(tipo, fk_atividade_id) values ('Rifa', 23);
insert into atividadesocial(tipo, fk_atividade_id) values ('Arrecadação', 24);
insert into atividadesocial(tipo, fk_atividade_id) values ('Plantar árvores', 25);

insert into concurso(tema, fk_atividade_id) values ('Programação', 26);
insert into concurso(tema, fk_atividade_id) values ('Escrita de artigos', 27);
insert into concurso(tema, fk_atividade_id) values ('Propostas políticas', 28);
insert into concurso(tema, fk_atividade_id) values ('Campanha de marketing', 29);
insert into concurso(tema, fk_atividade_id) values ('Propostas ecológicas', 30);

insert into sessaoapresentacaoartigos(nomesessao, fk_atividade_id) values('Sessão de Bio informática', 31);
insert into sessaoapresentacaoartigos(nomesessao, fk_atividade_id) values('Sessão de divulgação científica', 32);
insert into sessaoapresentacaoartigos(nomesessao, fk_atividade_id) values('Sessão de ensino público', 33);
insert into sessaoapresentacaoartigos(nomesessao, fk_atividade_id) values('Sessão de empreendedorismo', 34);
insert into sessaoapresentacaoartigos(nomesessao, fk_atividade_id) values('Sessão de combate a doenças contagiosas', 35);

insert into artigo(nome, autores) values ('Sequênciamento do DNA', 'Gabriel de Castro Michelassi');
insert into artigo(nome, autores) values ('Ciência no dia a dia de crianças', 'Giovana Armani de Lima');
insert into artigo(nome, autores) values ('Ensino à distância em escolas públicas', 'Guilherme Balog Gardino');
insert into artigo(nome, autores) values ('Como começar uma startup?', 'Vitória Lorentz');
insert into artigo(nome, autores) values ('Novas pandemias podem vir a acontecer na próxima década?', 'Gustavo Reis');

insert into sessaoapresentaartigo(fk_artigo_id, fk_sessao) values (1, 1);
insert into sessaoapresentaartigo(fk_artigo_id, fk_sessao) values (2, 2);
insert into sessaoapresentaartigo(fk_artigo_id, fk_sessao) values (3, 3);
insert into sessaoapresentaartigo(fk_artigo_id, fk_sessao) values (4, 4);
insert into sessaoapresentaartigo(fk_artigo_id, fk_sessao) values (5, 5);

insert into receitasexclusivaatividade(descricao, valor, fk_atividade_id) values ('Venda de lembraças', 250, 2);
insert into receitasexclusivaatividade(descricao, valor, fk_atividade_id) values ('Venda de camisas pesonalizadas', 500, 8);
insert into receitasexclusivaatividade(descricao, valor, fk_atividade_id) values ('Viagem de campo', 5000, 5);
insert into receitasexclusivaatividade(descricao, valor, fk_atividade_id) values ('Financiamento para publicação de artigo', 1000, 35);
insert into receitasexclusivaatividade(descricao, valor, fk_atividade_id) values ('Financiamento para publicação de artigos', 1000, 34);

insert into despesasexclusivasatividade(descricao, valor, fk_atividade_id) values ('Impressão de provas', 200, 30);
insert into despesasexclusivasatividade(descricao, valor, fk_atividade_id) values ('Compra de arduínos', 300, 1);
insert into despesasexclusivasatividade(descricao, valor, fk_atividade_id) values ('Financiamento de software', 2000, 26);
insert into despesasexclusivasatividade(descricao, valor, fk_atividade_id) values ('Material pratico', 10000, 5);
insert into despesasexclusivasatividade(descricao, valor, fk_atividade_id) values ('Material prático', 1000, 15);

insert into patrocinioexclusivoatividade(categoria, valor, descricao) values ('Prata', 10000, 'Higienização e segurança das salas');
insert into patrocinioexclusivoatividade(categoria, valor, descricao) values ('Bronze', 5000, 'Compra de softwares para workshop');
insert into patrocinioexclusivoatividade(categoria, valor, descricao) values ('Ouro', 25000, 'Financiamento de computadores');
insert into patrocinioexclusivoatividade(categoria, valor, descricao) values ('Ouro', 20000, 'Compra de material para experimentos');
insert into patrocinioexclusivoatividade(categoria, valor, descricao) values ('Prata', 10000, 'Compra de material para experimentos');

insert into entidadepatrocinaexclusivamenteatividade(fk_entidade_id, fk_atividade_id, fk_patrocinioexclusivo_id)  values (1, 30, 1);
insert into entidadepatrocinaexclusivamenteatividade(fk_entidade_id, fk_atividade_id, fk_patrocinioexclusivo_id)  values (2, 1, 2);
insert into entidadepatrocinaexclusivamenteatividade(fk_entidade_id, fk_atividade_id, fk_patrocinioexclusivo_id)  values (3, 26, 3);
insert into entidadepatrocinaexclusivamenteatividade(fk_entidade_id, fk_atividade_id, fk_patrocinioexclusivo_id)  values (4, 5, 4);
insert into entidadepatrocinaexclusivamenteatividade(fk_entidade_id, fk_atividade_id, fk_patrocinioexclusivo_id)  values (5, 15, 5);