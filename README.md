# Teste de API com Karate

## Como executar

Acesse a pasta onde está o Runner:

```bash
cd ./karate_testapi
```
Rode os testes:

```bash
mvn test -Dtest=rickRunner
```

Ao executar os testes, no terminal será gerado um report, em formato HTML, através dele vocẽ terá o relatório de testes

## Respostas sobre o projeto

### 1. Quantas suítes de testes você desenvolveu?

Foi desenvolvida uma suíte de testes, com 6 testes.

### 2. Os testes desenvolvidos são manuais ou automatizados?

Automatizados

### 3. Onde os testes se localizam na pirâmide apresentada?

Integration

### 4. Os testes desenvolvidos são funcionais ou não-funcionais?

Funcionais

### 5. Alguns dos testes desenvolvidos são testes Fim-a-Fim(End-To-End)?

Sim, um dos testes acessa um link e, obtido o retorno, acessa um link dentro do retorno, um exemplo de teste E2E

### 6. O que se deve fazer para que os testes desenvolvidos funcionem em modo regressão?

Para os testes de regressão, basta rodar novamente todos os testes desenvolvidos, após uma nova feature do software ter sido criada
