
# Trabalho 03 - Programação Lógica

# Dupla : Andriely e Wilson

## **Descrição**
Este projeto foi desenvolvido para a disciplina de **Linguagem de Programação e Paradigmas** no curso de Sistemas de Informação. 
O objetivo é aplicar conceitos de programação lógica utilizando Prolog, implementando cinco módulos de sistemas especialistas 
que deduzem informações ou fazem recomendações com base em fatos e regras.

## **Módulos Implementados**

### **1. Diagnóstico Médico**
Sistema especialista que sugere diagnósticos médicos com base nos sintomas informados pelo usuário.

- **Como executar:**
  ```prolog
  ?- consult('diagnostico_medico.pl').
  ?- diagnostico.
  ```
- **Exemplo de entrada:**
  ```
  febre,tosse,cansaco
  ```
- **Exemplo de saída:**
  ```
  Possível diagnóstico: gripe
  ```

---

### **2. Análise de Problemas de Veículos**
Ajuda a identificar problemas comuns em veículos com base em sintomas relatados.

- **Como executar:**
  ```prolog
  ?- consult('problemas_veiculos.pl').
  ?- diagnostico_veiculo.
  ```
- **Exemplo de entrada:**
  ```
  motor_nao_liga,luzes_fracas
  ```
- **Exemplo de saída:**
  ```
  Possível problema: bateria_fraca
  ```

---

### **3. Recomendações de Livros**
Recomenda livros com base em preferências de gênero e interesses do usuário.

- **Como executar:**
  ```prolog
  ?- consult('recomendacao_livros.pl').
  ?- recomendar_livro.
  ```
- **Exemplo de entrada:**
  ```
  ficcao,politica
  ```
- **Exemplo de saída:**
  ```
  Recomendação: 1984
  ```

---

### **4. Recomendação de Treinos de Academia**
Sugere treinos baseados nos objetivos e disponibilidade do usuário.

- **Como executar:**
  ```prolog
  ?- consult('treinos_academia.pl').
  ?- recomendacao_treino.
  ```
- **Exemplo de entrada:**
  ```
  ganhar_massa,intermediario
  ```
- **Exemplo de saída:**
  ```
  Recomendação: hipertrofia
  ```

---

### **5. Investigação Criminal**
Auxilia na análise de casos criminais, sugerindo suspeitos ou cenários com base em evidências.

- **Como executar:**
  ```prolog
  ?- consult('investigacao_criminal.pl').
  ?- analisar_crime.
  ```
- **Exemplo de entrada:**
  ```
  impressao_digital,financeiro
  ```
- **Exemplo de saída:**
  ```
  Suspeito: jose
  ```

---

## **Como Instalar o SWI-Prolog**
1. Acesse o [site oficial do SWI-Prolog](https://www.swi-prolog.org/) e baixe a versão para seu sistema operacional.
2. Instale seguindo as instruções do instalador.
3. Abra o SWI-Prolog e configure o diretório atual para o local onde os arquivos `.pl` estão salvos.

---

## **Como Rodar os Arquivos**
1. Abra o SWI-Prolog.
2. Use o comando `consult('nome_do_arquivo.pl').` para carregar o módulo desejado.
3. Siga as instruções de cada módulo.

---

## **Estrutura do Repositório**
```
/PROLOG
│
├── diagnostico_medico.pl
├── problemas_veiculos.pl
├── recomendacao_livros.pl
├── treinos_academia.pl
├── investigacao_criminal.pl
└── README.md
```
