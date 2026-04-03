# Deploy FastAPI em VPS para o Reconexao Essencial

## Visao geral
Para evitar conflito de contexto, o ideal e separar claramente:

- `frontend app`: projeto Flutter/FlutterFlow
- `backend api`: projeto FastAPI
- `deploy`: arquivos de infraestrutura

## Estrutura recomendada no repositorio

```text
reconexao-essencial/
  android/
  ios/
  lib/
  web/
  assets/
  docs/
  deploy/
    nginx/
      reconexao-api.conf.example
    systemd/
      reconexao-api.service.example
  backend_fastapi/
    app/
      api/
        v1/
      core/
      models/
      schemas/
      services/
    requirements.txt
    README.md
  pubspec.yaml
```

## Estrutura recomendada na VPS

```text
/var/www/reconexao/
  app/
    repo/
      backend_fastapi/
      deploy/
      lib/
      web/
      ...
    shared/
      logs/
      env/
        api.env
```

## Fluxo correto com GitHub e VPS

Sim, o fluxo mais simples e seguro e este:

1. Voce faz as alteracoes localmente.
2. Voce testa localmente.
3. Voce faz `git add`, `git commit` e `git push`.
4. Na VPS, dentro da pasta do projeto, voce roda `git pull`.
5. Depois reinicia o servico da API.

## Fluxo de deploy recomendado

### No computador local

```bash
git add .
git commit -m "feat: atualiza backend fastapi"
git push origin main
```

### Na VPS

```bash
cd /var/www/reconexao/app/repo
git pull origin main
source /var/www/reconexao/app/repo/backend_fastapi/.venv/bin/activate
pip install -r backend_fastapi/requirements.txt
sudo systemctl restart reconexao-api
sudo systemctl status reconexao-api
```

## Dominio privado

Voce normalmente vai expor a API assim:

- app FlutterFlow chama: `https://api.seudominio.com/api/v1/...`
- `nginx` recebe esse dominio
- `nginx` encaminha para `uvicorn` rodando localmente, por exemplo em `127.0.0.1:8000`

## Exemplo de enderecamento

- Dominio da API: `api.reconexaoessencial.com`
- Base URL no FlutterFlow: `https://api.reconexaoessencial.com/api/v1`
- Endpoint da rota: `/auth/login`

No FlutterFlow, a combinacao final fica:

```text
https://api.reconexaoessencial.com/api/v1/auth/login
```

## Regra importante de diretorio

Nunca misture:

- arquivos do app Flutter dentro da pasta do backend
- arquivos de deploy dentro de `lib/`
- configuracoes de ambiente dentro do Git

## Onde fica cada coisa

### App FlutterFlow
- `lib/`
- `assets/`
- `android/`
- `ios/`
- `web/`

### Contrato de API e mapeamento
- `docs/API_HTTP_V1_RECONEXAO.md`
- `docs/SCHEMA_ALIGNMENT_AUDIT.md`

### Backend Python
- `backend_fastapi/app/api/v1/`
- `backend_fastapi/app/core/`
- `backend_fastapi/app/models/`
- `backend_fastapi/app/schemas/`
- `backend_fastapi/app/services/`

### Infraestrutura
- `deploy/nginx/`
- `deploy/systemd/`

## Variaveis de ambiente

Nao comite `.env` real.

Exemplo:

```text
/var/www/reconexao/shared/env/api.env
```

Conteudo:

```env
APP_ENV=production
APP_HOST=127.0.0.1
APP_PORT=8000
APP_BASE_URL=https://api.reconexaoessencial.com
FIREBASE_PROJECT_ID=seu-projeto
FIREBASE_CLIENT_EMAIL=...
FIREBASE_PRIVATE_KEY=...
```

## O que eu recomendo para voce

Se o objetivo e clareza e zero confusao:

1. Manter um unico repositorio por enquanto.
2. Criar `backend_fastapi/` na raiz.
3. Criar `deploy/` na raiz.
4. Subir tudo para GitHub.
5. Fazer `git pull` na VPS sempre dentro da pasta raiz do projeto.
6. Rodar a API via `systemd`.
7. Colocar `nginx` na frente com HTTPS.

## Ordem pratica

1. Criar `backend_fastapi/`
2. Criar as primeiras rotas `auth` e `journal`
3. Configurar `uvicorn`
4. Configurar `systemd`
5. Configurar `nginx`
6. Apontar o dominio
7. Cadastrar a Base URL no FlutterFlow
