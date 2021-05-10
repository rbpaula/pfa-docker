USE pfa-docker;

CREATE TABLE modulos(
  id serial primary key,
  nome varchar(300) not null
);

INSERT INTO modulos(nome) VALUES
('Docker'),
('Fundamentos de Arquitetura de Software'),
('Comunica��o'),
('RabbitMQ'),
('Autentica��o e Keycloak'),
('Domain Driven Design e Arquitetura Hexagonal'),
('Apache Kafka'),
('Service Discovery'),
('Padr�es e T�cnicas Avan�adas com Git e Github'),
('Integra��o Cont�nua'),
('Kubernetes'),
('Service Mesh com Istio'),
('Observalidade'),
('Deploy nos Cloud Providers');