# Projeto que testa a possível perda de dados em um cluster kafka


Esta lab monta um ambiente com 5 servidores, usando o docker-compose:

1 zookeeper
3 kafka brokers
1 kafka producer
1 kafka consumer

Necessário fazer ter instalado o binário netcat no host. 

# Execução dos testes

Para execução dos testes necessário baixar as versões do amq-streams e descompactar na pasta kafka-versions.


Os testes são executados mediante arquivo auto-test/cenario-x

Atualmente está implementado os seguintes cenários:

auto-test/cenario-1

Para executar o teste é necessário configurar a versão do amq usando a váriavel ANTES de executar o script do cenário:
export AMQ_VERSION=kafka_2.12-2.7.0.redhat-00005

