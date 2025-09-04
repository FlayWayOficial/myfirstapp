# ✈️ Projeto Agência de Viagens - FlayWay

Bem-vindo ao repositório oficial do nosso projeto de software para a agência de viagens! Este documento serve como um guia central para todos os colaboradores. Leia-o com atenção para entender como configurar seu ambiente e como contribuir de forma organizada.

## 🎯 Objetivo do Projeto

O objetivo é desenvolver um sistema completo de gestão para uma agência de viagens, incluindo funcionalidades como cadastro de clientes, busca de pacotes, sistema de reservas, etc.

## 🛠️ Passo 1: Configuração Inicial do Ambiente

Antes de começar a programar, você precisa configurar seu computador para se comunicar com o GitHub de forma segura. Faremos isso usando uma chave SSH.

### 1.1 - Instalando o Git

Se você ainda não tem o Git instalado, baixe e instale a partir do site oficial:
* [https://git-scm.com/downloads](https://git-scm.com/downloads)

Durante a instalação, você pode manter as opções padrão. Após instalar, abra um terminal (no Windows, pode ser o **Git Bash** que vem com a instalação) e confirme que funcionou com o comando:
```bash
git --version
```

### 1.2 - Configurando seu Nome e Email no Git

O Git precisa saber quem você é para registrar suas contribuições. Use os comandos abaixo, **substituindo os dados de exemplo pelos seus**. Use o mesmo email que você cadastrou no GitHub.

```bash
git config --global user.name "Seu Nome Completo"
git config --global user.email "seu-email-do-github@exemplo.com"
```

### 1.3 - Criando sua Chave SSH

A chave SSH é como uma senha digital que permite que seu computador se conecte ao GitHub sem precisar digitar seu usuário e senha toda vez.

1.  **Abra o terminal** (ou Git Bash no Windows).
2.  **Execute o comando abaixo**, substituindo pelo seu email do GitHub:
    ```bash
    ssh-keygen -t ed25519 -C "seu-email-do-github@exemplo.com"
    ```
3.  O terminal perguntará "Enter a file in which to save the key". Apenas **pressione Enter** para aceitar o local padrão.
4.  Em seguida, ele pedirá uma "passphrase" (uma senha para a chave). Você pode **pressionar Enter duas vezes** para deixar em branco (mais simples) ou criar uma senha, se preferir mais segurança.

### 1.4 - Adicionando a Chave SSH ao GitHub

Agora que a chave foi criada, precisamos informar ao GitHub sobre ela.

1.  **Copie a sua chave pública.** Para isso, use o comando correspondente ao seu sistema operacional:
    * **Windows (no Git Bash):**
        ```bash
        cat ~/.ssh/id_ed25519.pub
        ```
    * **macOS:**
        ```bash
        pbcopy < ~/.ssh/id_ed25519.pub
        ```
    * **Linux:**
        ```bash
        cat ~/.ssh/id_ed25519.pub
        ```
    O comando `cat` irá exibir a chave no terminal. Selecione **todo o texto** (começando com `ssh-ed25519` e terminando com seu email) e copie (Ctrl+C).

2.  **Acesse o GitHub:**
    * Faça login na sua conta.
    * Clique na sua foto de perfil no canto superior direito e vá em **Settings**.
    * No menu esquerdo, clique em **SSH and GPG keys**.
    * Clique no botão verde **New SSH key**.
    * Dê um "Title" para a chave (ex: "Meu Notebook Pessoal").
    * Cole a chave que você copiou no campo "Key".
    * Clique em **Add SSH key**.

## 💻 Passo 2: Clonando o Repositório

Agora que seu ambiente está configurado, você pode baixar (clonar) o projeto para o seu computador.

1.  **Crie uma pasta para organizar seus projetos.** É uma boa prática não deixar os projetos soltos na Área de Trabalho. Crie uma pasta chamada `Projetos` ou `Dev` na sua Área de Trabalho ou em "Documentos".
    * Exemplo: `C:\Users\SeuUsuario\Desktop\Projetos`

2.  **Navegue até essa pasta pelo terminal.**
    ```bash
    # Exemplo para navegar para a pasta criada na Área de Trabalho
    cd ~/Desktop/Projetos
    ```

3.  **Clone o repositório.** Vá até a página principal do nosso repositório no GitHub, clique no botão verde `<> Code`, certifique-se de que a aba **SSH** está selecionada e copie a URL (algo como `git@github.com:nome-do-usuario/nome-do-repositorio.git`).

    Agora, execute o comando no seu terminal:
    ```bash
    git clone [URL-DO-REPOSITORIO-AQUI]
    ```
    Isso criará uma pasta com o nome do projeto dentro da sua pasta `Projetos`. Pronto! Você tem uma cópia local do código.

## 🚀 Passo 3: Como Contribuir (Nosso Fluxo de Trabalho)

Para manter o projeto organizado e evitar conflitos, seguiremos um fluxo de trabalho simples. **Nunca envie código diretamente para a branch `main`!**

### O Ciclo de Contribuição:

1.  **Sincronize seu repositório local:** Antes de começar a trabalhar, sempre garanta que sua cópia local está atualizada com a versão mais recente do repositório principal.
    ```bash
    git checkout main
    git pull origin main
    ```

2.  **Crie uma nova branch:** Crie uma branch (um "ramo") para a sua tarefa específica (seja uma nova funcionalidade ou a correção de um bug). O nome da branch deve ser descritivo.
    * **Formato:** `feature/descricao-da-feature` ou `fix/descricao-do-bug`
    * **Exemplo:** `feature/tela-de-login` ou `fix/erro-no-cadastro`

    Use o comando:
    ```bash
    # Exemplo
    git checkout -b feature/tela-de-login
    ```

3.  **Faça seu trabalho:** Agora você pode programar, criar arquivos, alterar o que for necessário para a sua tarefa.

4.  **Salve suas alterações (Commit):** Quando terminar uma parte do trabalho ou a tarefa inteira, você precisa "salvar" um pacote de alterações. Isso é um *commit*.
    ```bash
    # Adiciona TODOS os arquivos modificados para serem salvos
    git add .

    # Cria o "pacote" com uma mensagem descritiva
    git commit -m "feat: implementa a funcionalidade de login com email e senha"
    ```
    > **Boas práticas para mensagens de commit:** Comece com um tipo (`feat`, `fix`, `docs`, `style`, `refactor`) e descreva o que foi feito de forma clara.

5.  **Envie sua branch para o GitHub:**
    ```bash
    # Substitua 'nome-da-sua-branch' pelo nome que você criou
    git push origin nome-da-sua-branch
    ```

6.  **Abra um Pull Request (PR):**
    * Vá até a página do repositório no GitHub.
    * O GitHub provavelmente mostrará um aviso amarelo com o nome da sua branch e um botão "Compare & pull request". Clique nele.
    * Dê um título claro para o seu Pull Request e descreva o que você fez.
    * Marque os outros membros do grupo como "Reviewers" (revisores).
    * Clique em "Create pull request".

A partir daí, o time revisará seu código, poderá fazer sugestões e, quando tudo estiver aprovado, um dos membros irá "dar merge" no seu código, incorporando-o à branch `main`.

## 📚 Comandos Úteis para o Dia a Dia

* `git status`: Mostra o estado atual do seu repositório (quais arquivos foram modificados, etc.).
* `git pull`: Puxa as atualizações do repositório remoto (do GitHub).
* `git branch`: Lista todas as branches que existem localmente.
* `git checkout <nome-da-branch>`: Muda para a branch especificada.

Qualquer dúvida, pergunte no nosso grupo! Vamos construir algo incrível juntos!
