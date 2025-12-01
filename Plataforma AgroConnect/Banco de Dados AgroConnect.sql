USE agroconnect;

CREATE TABLE usuario (
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    senha VARCHAR(30) NOT NULL,
    tipo_usuario ENUM('Produtor','Comprador','Fornecedor','Prestador') NOT NULL
);

INSERT INTO usuario (nome, email, senha, tipo_usuario)
	VALUES ('João Fernandes', 'joaof23@example.com', 'hash_senha_123', 'Produtor'),
		   ('Mariana Cardoso', 'mcardoso@example.com', 'hash_senha_abc', 'Comprador');