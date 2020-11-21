CREATE TABLE Pessoas (
    id SERIAL PRIMARY KEY,
    Nome VARCHAR,
    Idade INTEGER,
    Sexo BOOLEAN
);

CREATE TABLE Localizacao (
    id SERIAL PRIMARY KEY,
    Endereco VARCHAR,
    Valor DOUBLE PRECISION
);

CREATE TABLE Evento (
    id SERIAL PRIMARY KEY,
    Nome VARCHAR,
    Edicao INTEGER,
    Tema VARCHAR,
    ValorInscricao DOUBLE PRECISION,
    fk_Localizacao_id INTEGER
);

CREATE TABLE PessoaParticipaEvento (
    fk_Evento_id INTEGER,
    fk_Pessoas_id INTEGER,
    DataCompra DATE
);

ALTER TABLE Evento ADD CONSTRAINT FK_Evento_2
    FOREIGN KEY (fk_Localizacao_id)
    REFERENCES Localizacao (id)
    ON DELETE RESTRICT;

ALTER TABLE PessoaParticipaEvento ADD CONSTRAINT FK_PessoaParticipaEvento_1
    FOREIGN KEY (fk_Evento_id)
    REFERENCES Evento (id)
    ON DELETE SET NULL;

ALTER TABLE PessoaParticipaEvento ADD CONSTRAINT FK_PessoaParticipaEvento_2
    FOREIGN KEY (fk_Pessoas_id)
    REFERENCES Pessoas (id)
    ON DELETE SET NULL;