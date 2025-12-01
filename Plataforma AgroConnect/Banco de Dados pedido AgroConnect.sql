CREATE TABLE pedido (
	id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    status_pedido ENUM('PENDENTE','PAGO','CANCELADO','ENVIADO','CONCLUIDO') NOT NULL,
    valor_total DECIMAL(12,2) DEFAULT 0,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
		ON UPDATE CASCADE
        ON DELETE RESTRICT
);

INSERT INTO pedido (id_usuario, status_pedido)
VALUES (2, 'pendente');

UPDATE pedido
SET valor_total = (SELECT SUM(quantidade * preco_unitario) FROM item_pedido WHERE id_pedido = 1)
WHERE id_pedido = 1;