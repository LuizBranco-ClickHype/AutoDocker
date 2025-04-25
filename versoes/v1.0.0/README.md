# AutoDocker v1.0.0

Este é um script de autoinstalação que configura automaticamente um ambiente Docker Swarm com Traefik como proxy reverso, Portainer para gerenciamento de contêineres e sistema de monitoramento avançado.

## Novidades da versão 1.0.0

- Interface visual melhorada com ASCII Art
- Modo avançado de instalação com monitoramento e backup
- Sistema de logs centralizado
- Segurança aprimorada no Traefik
- Verificação de integridade automática

## Como usar

1. Faça o download do script:

```bash
curl -O https://raw.githubusercontent.com/SEU_USUARIO/AutoDocker/v1.0.0/auto_instalador.sh
```

2. Dê permissão de execução ao script:

```bash
chmod +x auto_instalador.sh
```

3. Execute o script como root (modo básico):

```bash
sudo ./auto_instalador.sh
```

4. Ou execute com opções avançadas:

```bash
sudo ./auto_instalador.sh --avancado
```

## Importante

Esta é a versão 1.0.0 estável. Se encontrar problemas, verifique o [CHANGELOG](../../CHANGELOG.md) para informações sobre correções em versões mais recentes ou reverta para uma versão anterior se necessário. 