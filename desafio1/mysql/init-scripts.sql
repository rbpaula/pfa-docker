USE pfa-docker;

CREATE TABLE modulos(
  id serial primary key,
  nome varchar(300) not null
);

INSERT INTO modulos(nome) VALUES
('Docker'),
('Fundamentos de Arquitetura de Software'),
('Comunicação'),
('RabbitMQ'),
('Autenticação e Keycloak'),
('Domain Driven Design e Arquitetura Hexagonal'),
('Apache Kafka'),
('Service Discovery'),
('Padrões e Técnicas Avançadas com Git e Github'),
('Integração Contínua'),
('Kubernetes'),
('Service Mesh com Istio'),
('Observalidade'),
('Deploy nos Cloud Providers');