CREATE TABLE JOGADOR (
    ID_JOGADOR NUMBER(10,0) NOT NULL,
    NOME VARCHAR2(100) NOT NULL,
    POSICAO VARCHAR2(100),
    BI  VARCHAR2(100),
    CONSTRAINT PK_JOGADOR PRIMARY KEY (ID_JOGADOR)
);

CREATE TABLE CONTRATADO (
    ID_JOGADOR NUMBER(10,0) NOT NULL,
    DATA_INICIO DATE NOT NULL,
    DATA_FIM DATE NOT NULL,
    CONSTRAINT PK_CONTRATADO PRIMARY KEY(ID_JOGADOR, DATA_INICIO),
    CONSTRAINT FK_CONTRATADO_REF_JOGADOR FOREIGN KEY(ID_JOGADOR)
        REFERENCES JOGADOR(ID_JOGADOR),
    CONSTRAINT CK_CONTRATADO CHECK(DATA_FIM > DATA_INICIO)
);

alter TABLE JOGADOR RENAME TO JOGADORES;
ALTER TABLE JOGADORES RENAME TO JOGADOR;

ALTER TABLE JOGADOR ADD APELIDO VARCHAR2(30)
ALTER TABLE JOGADOR RENAME COLUMN APELIDO TO NICKNAME;

ALTER TABLE JOGADOR MODIFY POSICAO NUMBER(5,0);

ALTER TABLE JOGADOR DROP COLUMN BI CASCADE CONSTRAINT;

alter TABLE CONTRATADO
DROP CONSTRAINT FK_CONTRATADO_REF_JOGADOR; 

DROP TABLE JOGADOR;

ALTER TABLE CONTRATADO
ADD CONSTRAINT FK_CONTRATADO_REF_JOGADOR FOREIGN KEY(ID_JOGADOR)
    REFERENCES JOGADOR(ID_JOGADOR)

ALTER TABLE CONTRATADO 
DISABLE CONSTRAINT FK_CONTRATADO_REF_JOGADOR;
