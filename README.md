# Plataforma de Recomendação de Filmes

## Descrição

Esta é uma plataforma de recomendação de filmes desenvolvida para permitir que os usuários encontrem e avaliem filmes. O sistema possui dois tipos de usuários: comun e administradore, onde o administrador tem a permissão de cadastrar novos filmes.

## Funcionalidades

### 1. Autenticação de Usuário

- **Cadastro de Usuário**: Um usuário pode se cadastrar fornecendo seu email, senha e nome. Apenas usuários comuns podem se cadastrar; usuários administradores são pré-cadastrados.
- **Login de Usuário**: Um usuário registrado pode realizar login no sistema utilizando seu email e senha.

### 2. Perfis de Usuário

- **Usuário Comum**:
  - Pode realizar cadastro.
  - Pode buscar e avaliar filmes.
- **Usuário Administrador**:
  - Pré-cadastrado no sistema.
  - Pode cadastrar novos filmes.

### 3. Cadastro de Filmes

Apenas usuários administradores podem cadastrar filmes no sistema. As informações necessárias para o cadastro de um filme são:
- Título
- Diretor
- Gênero

### 4. Busca de Filmes

Usuários podem buscar filmes cadastrados no sistema utilizando os seguintes critérios:
- Título
- Diretor
- Gênero
- Média das avaliações (exemplo: média > 5)

### 5. Avaliação de Filmes

- Usuários podem avaliar filmes cadastrados, atribuindo uma nota de 0 a 10.
- Cada filme terá sua média de avaliação calculada automaticamente, atualizada a cada nova avaliação.

## Requisitos Técnicos

### Tecnologias Utilizadas

- **Backend**:
  ![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=openjdk&logoColor=white)
- **Frontend**:
  ![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
  ![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
  ![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
- **Banco de Dados**:
  ![MySQL](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white)
- **Framework**:
  ![Bootstrap](https://img.shields.io/badge/-boostrap-0D1117?style=for-the-badge&logo=bootstrap&labelColor=0D1117)
- **Ferramentas**:
  ![Git](https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=white)
  
### Instalação

1. Clone o repositório:
  git clone https://github.com/SandraRojasZ/PlataformaRecomendacaoFilmes.git

2. Navegue até o diretório do projeto: cd sua-plataforma

3. Instale as dependências do backend: npm install
   
4. Inicie o servidor backend: npm start

5. Navegue até o diretório do frontend e instale as dependências:
  cd frontend
  npm install
6. Inicie o servidor frontend: npm start


### Uso

- **Cadastro e Login**: Usuários podem se cadastrar e fazer login na plataforma.
- **Cadastro de Filmes**: Administradores podem cadastrar novos filmes.
- **Busca de Filmes**: Usuários podem buscar filmes utilizando título, diretor, gênero ou média das avaliações.
- **Avaliação de Filmes**: Usuários podem avaliar filmes cadastrados, e as médias serão atualizadas automaticamente.

## Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Faça commit de suas alterações (`git commit -m 'Add some AmazingFeature'`)
4. Faça push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## Verificar Novas Pastas e Arquivos
1. Abra o terminal e navegue até o repositório clonado:
  - cd /caminho/para/o/repositorio
  - Exemplo: cd PlataformaRecomendacaoFilmes/
3. Use o comando 'git status' para ver as novas pastas e arquivos:
  - git status   
  Este comando mostra as mudanças feitas no diretório de trabalho e no índice, incluindo novos arquivos e pastas que ainda não foram adicionados ao controle de versão.

## Adicionar, Commitar e Enviar para o GitHub
1. Adicionar novos arquivos e pastas ao índice:
  - git add .   
O ponto (.) adiciona todos os arquivos modificados e novos. Se quiser adicionar arquivos específicos, você pode especificar o caminho para esses arquivos.

2. Commitar as mudanças:
 - git commit -m "Mensagem descritiva sobre as mudanças"
 - Exemplo: git commit -m "Adição dos arquivos para a Login e Cadastro"

3. Enviar as mudanças para o GitHub:
 - git push origin nome-da-branch
 - Exemplo: git push origin main
 - Certifique-se de substituir nome-da-branch pelo nome da branch em que você está trabalhando, como main ou master.

 Seguindo esses passos, você conseguirá visualizar, adicionar, commitar e enviar para o GitHub todas as novas pastas e arquivos adicionados no repositório clonado.

Esta plataforma foi desenvolvida para fornecer uma experiência simples e eficiente na recomendação e avaliação de filmes. Se você tiver alguma dúvida ou sugestão, sinta-se à vontade para contribuir ou entrar em contato.

## Contato
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sandra-zegarrundo/)
