USE agroconnect;

CREATE TABLE anuncio (
	id_anuncio INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    tipo_anuncio ENUM('Produto','Insumo','Serviço') NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    descricao TEXT,
    preco DECIMAL(12,2) NOT NULL,
    quantidade DECIMAL(12,2) DEFAULT 0,
    data_publicacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
		ON UPDATE CASCADE
        ON DELETE RESTRICT
);

INSERT INTO anuncio (id_usuario, tipo_anuncio, titulo, descricao, preco, quantidade)
VALUES (1, 'Produto', 'Soja Safra 2025', 'Soja variedade X', 145.00, 300);
