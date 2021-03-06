

-- --------------------------------------------------------

--
-- Estrutura para tabela bloqueio
--

CREATE TABLE IF NOT EXISTS bloqueio (
  "idBloqueio" SERIAL PRIMARY KEY,
  "idDiscente" int DEFAULT NULL,
  "idTutor" int DEFAULT NULL,
	"tempo" VARCHAR(20) NULL DEFAULT NULL,
	"bloqueio" BOOLEAN NULL DEFAULT NULL,
	CONSTRAINT "FK_bloqueio_usuario" FOREIGN KEY ("idDiscente") REFERENCES "public"."usuario" ("idUsuario") ON UPDATE NO ACTION ON DELETE CASCADE,
	CONSTRAINT "FK_bloqueio_usuario_2" FOREIGN KEY ("idTutor") REFERENCES "public"."usuario" ("idUsuario") ON UPDATE NO ACTION ON DELETE CASCADE

);

-- --------------------------------------------------------

--
-- Estrutura para tabela events
--



CREATE TABLE IF NOT EXISTS events (
	"id" SERIAL PRIMARY KEY,
	"title" VARCHAR(15) NULL DEFAULT NULL,
	"description" TEXT NULL DEFAULT NULL,
	"color" VARCHAR(10) NULL DEFAULT NULL,
	"start" TIMESTAMP NULL DEFAULT NULL,
	"end" TIMESTAMP NULL DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estrutura para tabela noticia
--

CREATE TABLE IF NOT EXISTS noticia (
  "idNoticia" SERIAL PRIMARY KEY,
  descricao text
);


-- --------------------------------------------------------

--
-- Estrutura para tabela regulamento
--

CREATE TABLE IF NOT EXISTS regulamento (
  "idRegulamento" SERIAL PRIMARY KEY,
  descricao text NOT NULL
);


-- --------------------------------------------------------

--
-- Estrutura para tabela usuario
--

CREATE TABLE IF NOT EXISTS usuario (
  "idUsuario" SERIAL PRIMARY KEY,
  usuario varchar(45)  DEFAULT NULL,
  senha varchar(45)  DEFAULT NULL,
  num_registro varchar(50) DEFAULT NULL,
  peso float DEFAULT NULL,
  sexo varchar(20) DEFAULT NULL,
  idade int DEFAULT NULL,
  altura float DEFAULT NULL,
  bloqueado int DEFAULT NULL,
  endereco varchar(100) DEFAULT NULL,
  login varchar(45)  DEFAULT NULL,
  nivel int DEFAULT NULL
);


-- --------------------------------------------------------

--
-- Estrutura para tabela disponibilidade
--

CREATE TABLE IF NOT EXISTS disponibilidade (
  "idDisponibilidade" SERIAL PRIMARY KEY,
  dia date DEFAULT NULL,
  "horaInicial" time DEFAULT NULL,
  "horaFinal" time DEFAULT NULL,
  "idTutor" int DEFAULT NULL,
  livre int DEFAULT NULL,
  "fkevents" INTEGER NULL DEFAULT NULL,
	CONSTRAINT "FK_disponibilidade_events" FOREIGN KEY ("fkevents") REFERENCES "public"."events" ("id") ON UPDATE NO ACTION ON DELETE CASCADE,
	CONSTRAINT "FK_disponibilidade_usuario" FOREIGN KEY ("idTutor") REFERENCES "public"."usuario" ("idUsuario") ON UPDATE NO ACTION ON DELETE CASCADE
);


-- --------------------------------------------------------

--
-- Estrutura para tabela agendamento
--




CREATE TABLE IF NOT EXISTS agendamento (
  "idAgendamento" SERIAL PRIMARY KEY,
  "fkTutor" int DEFAULT NULL,
  "fkDiscente" int DEFAULT NULL,
  "fkDisponibilidade" int DEFAULT NULL,
	CONSTRAINT "fk_Agendamento_idDiscente" FOREIGN KEY ("fkDiscente") REFERENCES "public"."usuario" ("idUsuario") ON UPDATE NO ACTION ON DELETE CASCADE,
	CONSTRAINT "fk_Agendamento_idDisponivel" FOREIGN KEY ("fkDisponibilidade") REFERENCES "public"."disponibilidade" ("idDisponibilidade") ON UPDATE NO ACTION ON DELETE CASCADE,
	CONSTRAINT "fk_Agendamento_idTutor" FOREIGN KEY ("fkTutor") REFERENCES "public"."usuario" ("idUsuario") ON UPDATE NO ACTION ON DELETE CASCADE

);


----------------------------------------------------------------------

-- Deletandi arquivos das tabelas

DELETE FROM "usuario";

DELETE FROM "regulamento";

DELETE FROM "agendamento";

DELETE FROM "noticia";

----------------------------------------------------------------------

-- Povoando tabelas

INSERT INTO "noticia" ("idNoticia", "descricao") VALUES
	(56, 'As vezes me sinto como n??o fosse deste mundo, acho que a maioria se sente assim desse modo.'),
	(57, 'Sinto falta daquelas risadas, mas lembro como voc?? fazia me sentir sozinho.'),
	(58, 'Cuide de si mesmo como cuidaria de algu??m que voc?? ama.'),
	(59, 'o ruim de mentir, com tempo voc?? acaba acreditando nas suas pr??prias mentiras. ???'),
	(60, 'Para mim n??o importa qual a chance de sucesso, t??o pouco sobre o que v??o pensar, apenas atirarei para o alto em busca da estrela que pra mim brilhar??. ???'),
	(55, 'Fico pensando o quanto te amei, e muitas das vezes deixei - me de lado. Fui t??o sua que tinha esquecido de me, mas as pessoas mudam e esse dia chegou, e hoje sou s?? minha e de mais ningu??m.'),
	(61, 'Voc?? n??o precisa de plat??ia cheia para reconhecer que voc?? ?? o melhor.'),
	(62, 'N??o venha tirar - me a paci??ncia, j?? estou exausta demais com os meus pr??prios , por quotingheart');
	
	
	
INSERT INTO "regulamento" ("idRegulamento", "descricao") VALUES
	(38, 'Fa??a a pessoa que voc?? gosta se sentir especial ao inv??s de s?? mais uma.'),
	(39, 'A vida e uma caixa preta nunca saberemos o seu real significado.???'),
	(40, 'n??o dever??amos temer a morte, mais sim a vida.'),
	(41, 'Teu abra??o eras confortante'),
	(42, 'Seja estranho. Seja aleat??rio. Seja quem voc?? ??. Porque voc?? nunca sabe quem amaria a pessoa que voc?? esconde.'),
	(43, 'A vida ?? um caos aleat??rio,ordenada pelo tempo.'),
	(44, 'A verdade, ?? que d??i lembrar dela.'),
	(45, 'Cada instante ?? sempre.'),
	(46, 'O aleat??rio n??o existe, nosso c??rebro sempre toma decis??es mesmo que ocultas.'),
	(47, 'Um ato aleat??rio de bondade, por menor que seja, pode ter um tremendo impacto na vida de outra pessoa.'),
	(48, 'No mundo do aleat??rio a ordem ?? n??o se preocupar.'),
	(49, 'Nada aleat??rio. Conhecimento
		Parado
		Torna-se
		Esquecimento.');



INSERT INTO "usuario" ("idUsuario", "usuario", "senha", "num_registro", "peso", "sexo", "idade", "altura", "bloqueado", "endereco", "login", "nivel") VALUES
	(48, 'Giliarde', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Giliarde', 2),
	(50, '??caro Dias dos Santos', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'icarodias', 3),
	(52, 'Samara da Trindade Torquato', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'samara', 3),
	(72, 'Ana Paula da Trindade Torquato', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ana12', 3),
	(74, 'Jonatas Mac??do Costa', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jonatas', 2),
	(75, 'icaro', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'icaro', 2),
	(76, 'Fabio lima', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fabio', 3),
	(43, 'admin', 'dba538946456c740662acaa8aa677094', '2222', 22, '2', 21, 222, NULL, NULL, 'admin', 1),
	(45, 'icaro-tutor', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'icaro-tutor', 2),
	(47, 'Tutor', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tutor', 2),
	(49, 'Giliarde', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'giliarde', 3),
	(53, 'Samara da Trindade Torquato', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'samara', 2),
	(71, 'Ana Paula da Trindade Torquato', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ana1', 3),
	(73, 'Mateus Alves dos Santos', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mateus', 2),
	(44, 'icaro', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'icaro', 3),
	(46, 'discente', 'dba538946456c740662acaa8aa677094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'discente', 3);
	





INSERT INTO "events" ("id", "title", "description", "color", "start", "end") VALUES
	(102, 'Livre', NULL, 'green', '2022-07-14 13:30:00', '2022-07-14 15:30:00'),
	(104, 'Livre', NULL, 'green', '2022-07-22 08:50:00', '2022-07-22 14:46:00'),
	(105, 'Livre', NULL, 'green', '2022-08-06 08:51:00', '2022-08-06 13:51:00');
	

INSERT INTO "disponibilidade" ("idDisponibilidade", "dia", "horaInicial", "horaFinal", "idTutor", "livre", "fkevents") VALUES
	(68, '2022-07-14', '13:30:00', '15:30:00', 73, 1, 102),
	(70, '2022-07-22', '08:50:00', '14:46:00', 45, 1, 104),
	(71, '2022-08-06', '08:51:00', '13:51:00', 45, 1, 105);






INSERT INTO "bloqueio" ("idBloqueio", "idDiscente", "idTutor", "tempo", "bloqueio") VALUES
	(75, 49, 43, NULL, 'false'),
	(73, 47, 47, NULL, 'false'),
	(74, 48, 48, NULL, 'false'),
	(79, 53, 53, NULL, 'false'),
	(112, 46, 45, '1', 'false'),
	(76, 50, 43, NULL, 'false'),
	(115, 71, 43, NULL, 'true'),
	(116, 50, 43, '3', 'true'),
	(70, 44, 43, NULL, 'false'),
	(86, 44, 45, '1', 'false'),
	(113, 44, 43, '2', 'false'),
	(117, 72, 43, NULL, 'true'),
	(118, 73, 73, NULL, 'true'),
	(119, 74, 74, NULL, 'true'),
	(120, 75, 75, NULL, 'true'),
	(71, 45, 45, NULL, 'false'),
	(121, 76, 43, NULL, 'true'),
	(122, 50, 43, '1', 'true'),
	(78, 52, 43, NULL, 'false');





INSERT INTO "agendamento" ("idAgendamento", "fkTutor", "fkDiscente", "fkDisponibilidade") VALUES
	(61, 73, 46, 68);
	























