🌾 AgroConnect – Sistema de Marketplace Agrícola

Modelagem, Normalização & Banco de Dados Relacional

📘 Sobre o Projeto

O AgroConnect é um sistema de marketplace voltado ao setor agropecuário, desenvolvido para conectar produtores rurais, compradores, fornecedores de insumos e prestadores de serviços agrícolas.
Seu objetivo é modernizar as relações comerciais do agronegócio, oferecendo uma plataforma organizada, eficiente e segura para negociação de produtos, insumos e serviços.

Este repositório contém a parte acadêmica e técnica voltada ao banco de dados, incluindo:
  Modelo Conceitual (DER)
  Modelo Lógico
  Modelo Físico (SQL)
  Normalização (1FN, 2FN, 3FN)
  Scripts de criação e manipulação dos dados

🎯 Objetivos do Sistema

  Oferecer integração entre os agentes do setor agro (produtores, compradores, fornecedores, prestadores).
  Garantir organização e rastreabilidade das negociações.
  Criar um banco de dados seguro, consistente e escalável.
  Utilizar as boas práticas de modelagem e normalização.

🧩 Estrutura do Banco de Dados

O banco foi modelado com base nas seguintes entidades:

  Usuario
  Anuncio
  Pedido
  Item_Pedido
  Avaliacao

As normalizações foram aplicadas até 3FN, garantindo:
  Ausência de atributos multivalorados
  Eliminação de dependências parciais
  Redução de redundância
  Consistência entre as relações

📐 Modelo Conceitual (DER)

DER revisado considerando integridade, cardinalidade e normalização. (Está na pasta junto com os códigos utilizados.)

🗂 Modelo Lógico

Usuario(
  id_usuario PK,
  nome,
  email,
  senha,
  tipo_usuario
)

Anuncio(
  id_anuncio PK,
  id_usuario FK,
  titulo,
  descricao,
  preco,
  quantidade,
  data_publicacao
)

Pedido (
  id_pedido PK,
  id_usuario FK,
  data_pedido,
  status_pedido,
  valor_total
)

Item_Pedido (
  id_item PK,
  id_pedido FK,
  id_anuncio FK,
  quantidade,
  preco_unitario
)

Avaliacao (
  id_avaliacao PK,
  id_pedido FK,
  id_avaliador FK,
  id_avaliado FK,
  nota,
  comentario
)

🧱 Modelo Físico (SQL)

Estará na pasta Plataforma AgroConnect.

🛠️ Ferramentas Utilizadas

  MySQL Workbench – modelagem e execução SQL
  MySQL Server – ambiente de banco
  Draw.io – criação do DER
  VS Code / GitHub – documentação e versionamento

👨‍💻 Autor

Gustavo Esteves
Projeto desenvolvido para fins acadêmicos e demonstração de domínio em:

  Modelagem de dados
  Normalização
  SQL (DDL/DML)
  Versionamento com Git/GitHub

📌 Observações Finais

Este repositório representa a construção estruturada de um banco de dados robusto, escalável e completamente normalizado, pronto para ser integrado a uma aplicação real de marketplace no setor agropecuário.
