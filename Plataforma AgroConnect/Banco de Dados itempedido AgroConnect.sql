CREATE TABLE item_pedido (
id_item INT AUTO_INCREMENT PRIMARY KEY,
id_pedido INT NOT NULL,
id_anuncio INT NOT NULL,
quantidade DECIMAL(12,2) NOT NULL,
preco_unitario DECIMAL(12,2) NOT NULL,
FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
	ON UPDATE CASCADE
    ON DELETE CASCADE,
FOREIGN KEY (id_anuncio) REFERENCES anuncio(id_anuncio)
	ON UPDATE CASCADE
    ON DELETE RESTRICT
);

INSERT INTO item_pedido (id_pedido, id_anuncio, quantidade, preco_unitario)
VALUES (1, 1, 50, 145.00);
