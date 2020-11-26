CREATE TABLE Entidade (
    id SERIAL PRIMARY KEY,
    Nome VARCHAR,
    Endereco VARCHAR,
    TipoEntidade VARCHAR
);

CREATE TABLE Pessoas (
    id SERIAL PRIMARY KEY,
    Nome VARCHAR,
    Idade INTEGER,
    Sexo BOOLEAN
);

CREATE TABLE Evento (
    id SERIAL PRIMARY KEY,
    Nome VARCHAR,
    Edicao INTEGER,
    Tema VARCHAR,
    ValorInscricao DOUBLE PRECISION,
    fk_Localizacao_id INTEGER
);

CREATE TABLE Localizacao (
    id SERIAL PRIMARY KEY,
    Nome VARCHAR,
    Endereco VARCHAR,
    Valor DOUBLE PRECISION
);

CREATE TABLE Atividade (
    id SERIAL PRIMARY KEY,
    Duracao INTEGER,
    ValorInscricao DOUBLE PRECISION,
    PublicoAlvo VARCHAR,
    fk_Evento_id INTEGER
);

CREATE TABLE Workshop (
    id SERIAL PRIMARY KEY,
    Tema VARCHAR,
    fk_Atividade_id INTEGER
);

CREATE TABLE Palestras (
    id SERIAL PRIMARY KEY,
    Afiliacao VARCHAR,
    MiniCurriculo VARCHAR,
    NomePalestra VARCHAR,
    fk_Atividade_id INTEGER
);

CREATE TABLE Tutorial (
    id SERIAL PRIMARY KEY,
    Tema VARCHAR,
    fk_Atividade_id INTEGER
);

CREATE TABLE Reuniao (
    id SERIAL PRIMARY KEY,
    Objetivo VARCHAR,
    fk_Atividade_id INTEGER
);

CREATE TABLE Concurso (
    id SERIAL PRIMARY KEY,
    Tema VARCHAR,
    fk_Atividade_id INTEGER
);

CREATE TABLE AtividadeSocial (
    id SERIAL PRIMARY KEY,
    Tipo VARCHAR,
    fk_Atividade_id INTEGER
);

CREATE TABLE SessaoApresentacaoArtigos (
    id SERIAL PRIMARY KEY,
    NomeSessao VARCHAR,
    fk_Atividade_id INTEGER
);

CREATE TABLE Artigo (
    id SERIAL PRIMARY KEY,
    Nome VARCHAR,
    Autores VARCHAR
);

CREATE TABLE Patrocinio (
    id SERIAL PRIMARY KEY,
    Categoria VARCHAR,
    Valor DOUBLE PRECISION,
    Beneficios VARCHAR
);

CREATE TABLE Receitas (
    id SERIAL PRIMARY KEY,
    Descricao VARCHAR,
    Valor DOUBLE PRECISION,
    fk_Evento_id INTEGER
);

CREATE TABLE Espaco (
    id SERIAL PRIMARY KEY,
    Descricao VARCHAR,
    Localizacao VARCHAR,
    CapacidadeMax INTEGER,
    fk_Localizacao_id INTEGER
);

CREATE TABLE Despesas (
    id SERIAL PRIMARY KEY,
    Valor DOUBLE PRECISION,
    Descricao VARCHAR,
    fk_Evento_id INTEGER
);

CREATE TABLE DespesasExclusivasAtividade (
    id SERIAL PRIMARY KEY,
    Descricao VARCHAR,
    Valor DOUBLE PRECISION,
    fk_Atividade_id INTEGER
);

CREATE TABLE ReceitasExclusivaAtividade (
    id SERIAL PRIMARY KEY,
    Descricao VARCHAR,
    Valor DOUBLE PRECISION,
    fk_Atividade_id INTEGER
);

CREATE TABLE PatrocinioExclusivoAtividade (
    id SERIAL PRIMARY KEY,
    Categoria VARCHAR,
    Valor DOUBLE PRECISION,
    Descricao VARCHAR
);

CREATE TABLE EquipeSeguranca (
    id SERIAL PRIMARY KEY,
    Nivel INTEGER,
    Periodo VARCHAR,
    Empresa VARCHAR,
    fk_Evento_id INTEGER
);

CREATE TABLE Ocorrencia (
    id SERIAL PRIMARY KEY,
    Descricao VARCHAR,
    Gravidade VARCHAR,
    Data DATE,
    Horario TIME,
    Local VARCHAR,
    fk_Equipe INTEGER
);

CREATE TABLE Anuncio (
    id SERIAL PRIMARY KEY,
    Tipo VARCHAR,
    Descricao VARCHAR,
    fk_Evento_id INTEGER,
    fk_Entidade_id INTEGER
);

CREATE TABLE Divulgacao (
    id SERIAL PRIMARY KEY,
    Tipo VARCHAR,
    Descricao VARCHAR,
    fk_Evento_id INTEGER
);

CREATE TABLE MeioDeDivulgacao (
    id SERIAL PRIMARY KEY,
    Descricao VARCHAR
);

CREATE TABLE PessoaResponsavelEntidade (
    id SERIAL PRIMARY KEY,
    fk_Pessoas_id INTEGER,
    fk_Entidade_id INTEGER
);

CREATE TABLE EntidadeRealizaEvento (
    id SERIAL PRIMARY KEY,
    fk_Evento_id INTEGER,
    fk_Entidade_id INTEGER
);

CREATE TABLE EntidadePromoveEvento (
    id SERIAL PRIMARY KEY,
    fk_Entidade_id INTEGER,
    fk_Evento_id INTEGER
);

CREATE TABLE EntidadePatrocinaEvento (
    id SERIAL PRIMARY KEY,
    fk_Entidade_id INTEGER,
    fk_Evento_id INTEGER,
    fk_Patrocinio_id INTEGER
);

CREATE TABLE SessaoApresentaArtigo (
    id SERIAL PRIMARY KEY,
    fk_Artigo_id INTEGER,
    fk_Sessao INTEGER
);

CREATE TABLE PessoaParticipaAtividade (
    id SERIAL PRIMARY KEY,
    fk_Pessoas_id INTEGER,
    fk_Atividade_id INTEGER,
    Papel VARCHAR
);

CREATE TABLE AtividadeRealizadaEmEspaco (
    id SERIAL PRIMARY KEY,
    fk_Atividade_id INTEGER,
    fk_Espaco_id INTEGER,
    Data DATE
);

CREATE TABLE PessoaParticipaEvento (
    id SERIAL PRIMARY KEY,
    fk_Evento_id INTEGER,
    fk_Pessoas_id INTEGER,
    DataCompra DATE
);

CREATE TABLE EntidadePatrocinaExclusivamenteAtividade (
    id SERIAL PRIMARY KEY,
    fk_Entidade_id INTEGER,
    fk_Atividade_id INTEGER,
    fk_PatrocinioExclusivo_id INTEGER
);

CREATE TABLE PessoaParticipaEquipeSeguranca (
    id SERIAL PRIMARY KEY,
    fk_Pessoas_id INTEGER,
    fk_Equipe INTEGER
);

CREATE TABLE DivulgadoEm (
    id SERIAL PRIMARY KEY,
    fk_Meio INTEGER,
    fk_Divulgacao_id INTEGER
);

ALTER TABLE Evento ADD CONSTRAINT FK_Evento_2
    FOREIGN KEY (fk_Localizacao_id)
    REFERENCES Localizacao (id)
    ON DELETE RESTRICT;

ALTER TABLE Atividade ADD CONSTRAINT FK_Atividade_2
    FOREIGN KEY (fk_Evento_id)
    REFERENCES Evento (id)
    ON DELETE RESTRICT;

ALTER TABLE Workshop ADD CONSTRAINT FK_Workshop_2
    FOREIGN KEY (fk_Atividade_id)
    REFERENCES Atividade (id)
    ON DELETE CASCADE;

ALTER TABLE Palestras ADD CONSTRAINT FK_Palestras_2
    FOREIGN KEY (fk_Atividade_id)
    REFERENCES Atividade (id)
    ON DELETE CASCADE;

ALTER TABLE Tutorial ADD CONSTRAINT FK_Tutorial_2
    FOREIGN KEY (fk_Atividade_id)
    REFERENCES Atividade (id)
    ON DELETE CASCADE;

ALTER TABLE Reuniao ADD CONSTRAINT FK_Reuniao_2
    FOREIGN KEY (fk_Atividade_id)
    REFERENCES Atividade (id)
    ON DELETE CASCADE;

ALTER TABLE Concurso ADD CONSTRAINT FK_Concurso_2
    FOREIGN KEY (fk_Atividade_id)
    REFERENCES Atividade (id)
    ON DELETE CASCADE;

ALTER TABLE AtividadeSocial ADD CONSTRAINT FK_AtividadeSocial_2
    FOREIGN KEY (fk_Atividade_id)
    REFERENCES Atividade (id)
    ON DELETE CASCADE;

ALTER TABLE SessaoApresentacaoArtigos ADD CONSTRAINT FK_SessaoApresentacaoArtigos_2
    FOREIGN KEY (fk_Atividade_id)
    REFERENCES Atividade (id)
    ON DELETE CASCADE;

ALTER TABLE Receitas ADD CONSTRAINT FK_Receitas_2
    FOREIGN KEY (fk_Evento_id)
    REFERENCES Evento (id)
    ON DELETE CASCADE;

ALTER TABLE Espaco ADD CONSTRAINT FK_Espaco_2
    FOREIGN KEY (fk_Localizacao_id)
    REFERENCES Localizacao (id)
    ON DELETE RESTRICT;

ALTER TABLE Despesas ADD CONSTRAINT FK_Despesas_2
    FOREIGN KEY (fk_Evento_id)
    REFERENCES Evento (id)
    ON DELETE CASCADE;

ALTER TABLE DespesasExclusivasAtividade ADD CONSTRAINT FK_DespesasExclusivasAtividade_2
    FOREIGN KEY (fk_Atividade_id)
    REFERENCES Atividade (id)
    ON DELETE CASCADE;

ALTER TABLE ReceitasExclusivaAtividade ADD CONSTRAINT FK_ReceitasExclusivaAtividade_2
    FOREIGN KEY (fk_Atividade_id)
    REFERENCES Atividade (id)
    ON DELETE CASCADE;

ALTER TABLE EquipeSeguranca ADD CONSTRAINT FK_EquipeSeguranca_2
    FOREIGN KEY (fk_Evento_id)
    REFERENCES Evento (id)
    ON DELETE RESTRICT;

ALTER TABLE Ocorrencia ADD CONSTRAINT FK_Ocorrencia_3
    FOREIGN KEY (fk_Equipe)
    REFERENCES EquipeSeguranca (id)
    ON DELETE RESTRICT;

ALTER TABLE Anuncio ADD CONSTRAINT FK_Anuncio_2
    FOREIGN KEY (fk_Evento_id)
    REFERENCES Evento (id)
    ON DELETE RESTRICT;

ALTER TABLE Anuncio ADD CONSTRAINT FK_Anuncio_3
    FOREIGN KEY (fk_Entidade_id)
    REFERENCES Entidade (id)
    ON DELETE RESTRICT;

ALTER TABLE Divulgacao ADD CONSTRAINT FK_Divulgacao_2
    FOREIGN KEY (fk_Evento_id)
    REFERENCES Evento (id)
    ON DELETE CASCADE;

ALTER TABLE PessoaResponsavelEntidade ADD CONSTRAINT FK_PessoaResponsavelEntidade_1
    FOREIGN KEY (fk_Pessoas_id)
    REFERENCES Pessoas (id)
    ON DELETE RESTRICT;

ALTER TABLE PessoaResponsavelEntidade ADD CONSTRAINT FK_PessoaResponsavelEntidade_2
    FOREIGN KEY (fk_Entidade_id)
    REFERENCES Entidade (id)
    ON DELETE RESTRICT;

ALTER TABLE EntidadeRealizaEvento ADD CONSTRAINT FK_EntidadeRealizaEvento_1
    FOREIGN KEY (fk_Evento_id)
    REFERENCES Evento (id)
    ON DELETE SET NULL;

ALTER TABLE EntidadeRealizaEvento ADD CONSTRAINT FK_EntidadeRealizaEvento_2
    FOREIGN KEY (fk_Entidade_id)
    REFERENCES Entidade (id)
    ON DELETE SET NULL;

ALTER TABLE EntidadePatrocinaEvento ADD CONSTRAINT FK_EntidadePatrocinaEvento_1
    FOREIGN KEY (fk_Entidade_id)
    REFERENCES Entidade (id)
    ON DELETE SET NULL;

ALTER TABLE EntidadePatrocinaEvento ADD CONSTRAINT FK_EntidadePatrocinaEvento_2
    FOREIGN KEY (fk_Evento_id)
    REFERENCES Evento (id)
    ON DELETE SET NULL;

ALTER TABLE EntidadePatrocinaEvento ADD CONSTRAINT FK_EntidadePatrocinaEvento_3
    FOREIGN KEY (fk_Entidade_id)
    REFERENCES Entidade (id)
    ON DELETE NO ACTION;

ALTER TABLE EntidadePatrocinaEvento ADD CONSTRAINT FK_EntidadePatrocinaEvento_4
    FOREIGN KEY (fk_Evento_id)
    REFERENCES Evento (id)
    ON DELETE NO ACTION;

ALTER TABLE EntidadePatrocinaEvento ADD CONSTRAINT EntidadePatrocinaEvento_3
    FOREIGN KEY (fk_Patrocinio_id)
    REFERENCES Patrocinio (id)
    ON DELETE RESTRICT;

ALTER TABLE SessaoApresentaArtigo ADD CONSTRAINT FK_SessaoApresentaArtigo_1
    FOREIGN KEY (fk_Artigo_id)
    REFERENCES Artigo (id)
    ON DELETE RESTRICT;

ALTER TABLE SessaoApresentaArtigo ADD CONSTRAINT FK_SessaoApresentaArtigo_2
    FOREIGN KEY (fk_Sessao)
    REFERENCES SessaoApresentacaoArtigos (id)
    ON DELETE RESTRICT;

ALTER TABLE PessoaParticipaAtividade ADD CONSTRAINT FK_PessoaParticipaAtividade_1
    FOREIGN KEY (fk_Pessoas_id)
    REFERENCES Pessoas (id)
    ON DELETE RESTRICT;

ALTER TABLE PessoaParticipaAtividade ADD CONSTRAINT FK_PessoaParticipaAtividade_2
    FOREIGN KEY (fk_Atividade_id)
    REFERENCES Atividade (id)
    ON DELETE SET NULL;

ALTER TABLE AtividadeRealizadaEmEspaco ADD CONSTRAINT FK_AtividadeRealizadaEmEspaco_1
    FOREIGN KEY (fk_Atividade_id)
    REFERENCES Atividade (id)
    ON DELETE RESTRICT;

ALTER TABLE AtividadeRealizadaEmEspaco ADD CONSTRAINT FK_AtividadeRealizadaEmEspaco_2
    FOREIGN KEY (fk_Espaco_id)
    REFERENCES Espaco (id)
    ON DELETE RESTRICT;

ALTER TABLE PessoaParticipaEvento ADD CONSTRAINT FK_PessoaParticipaEvento_1
    FOREIGN KEY (fk_Evento_id)
    REFERENCES Evento (id)
    ON DELETE SET NULL;

ALTER TABLE PessoaParticipaEvento ADD CONSTRAINT FK_PessoaParticipaEvento_2
    FOREIGN KEY (fk_Pessoas_id)
    REFERENCES Pessoas (id)
    ON DELETE SET NULL;

ALTER TABLE EntidadePatrocinaExclusivamenteAtividade ADD CONSTRAINT FK_EntidadePatrocinaExclusivamenteAtividade_1
    FOREIGN KEY (fk_Entidade_id)
    REFERENCES Entidade (id)
    ON DELETE NO ACTION;

ALTER TABLE EntidadePatrocinaExclusivamenteAtividade ADD CONSTRAINT FK_EntidadePatrocinaExclusivamenteAtividade_2
    FOREIGN KEY (fk_Atividade_id)
    REFERENCES Atividade (id)
    ON DELETE NO ACTION;

ALTER TABLE EntidadePatrocinaExclusivamenteAtividade ADD CONSTRAINT EntidadePatrocinaExclusivamenteAtividade_3
    FOREIGN KEY (fk_PatrocinioExclusivo_id)
    REFERENCES PatrocinioExclusivoAtividade (id)
    ON DELETE RESTRICT;

ALTER TABLE PessoaParticipaEquipeSeguranca ADD CONSTRAINT FK_PessoaParticipaEquipeSeguranca_1
    FOREIGN KEY (fk_Pessoas_id)
    REFERENCES Pessoas (id)
    ON DELETE RESTRICT;

ALTER TABLE PessoaParticipaEquipeSeguranca ADD CONSTRAINT FK_PessoaParticipaEquipeSeguranca_2
    FOREIGN KEY (fk_Equipe)
    REFERENCES EquipeSeguranca (id)
    ON DELETE SET NULL;

ALTER TABLE DivulgadoEm ADD CONSTRAINT FK_DivulgadoEm_1
    FOREIGN KEY (fk_Meio)
    REFERENCES MeioDeDivulgacao (id)
    ON DELETE RESTRICT;

ALTER TABLE DivulgadoEm ADD CONSTRAINT FK_DivulgadoEm_2
    FOREIGN KEY (fk_Divulgacao_id)
    REFERENCES Divulgacao (id)
    ON DELETE SET NULL;