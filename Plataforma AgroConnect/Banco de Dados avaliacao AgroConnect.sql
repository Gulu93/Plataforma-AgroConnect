CREATE TABLE avaliacao(
	id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL UNIQUE, -- 1 avaliação por pedido
    id_avaliador INT NOT NULL,
    id_avaliado INT NOT NULL,
    nota TINYINT NOT NULL CHECK (nota BETWEEN 1 AND 5),
    comentario TEXT,
    data_avaliacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
		ON UPDATE CASCADE
        ON DELETE RESTRICT,
	FOREIGN KEY (id_avaliador) REFERENCES usuario(id_usuario)
		ON UPDATE CASCADE
        ON DELETE RESTRICT,
	FOREIGN KEY (id_avaliado) REFERENCES usuario(id_usuario)
		ON UPDATE CASCADE
        ON DELETE RESTRICT
	);
    
    INSERT INTO avaliacao (id_pedido, id_avaliador, id_avaliado, nota, comentario)
    VALUES (1,2,1,4,'Produto conforme descrito');
    