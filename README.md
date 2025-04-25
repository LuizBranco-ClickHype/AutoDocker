# AutoDocker - Instalador Automático Docker Swarm

![AutoDocker Banner](https://via.placeholder.com/800x200/0d47a1/ffffff?text=AutoDocker)

Este é um script de autoinstalação que configura automaticamente um ambiente Docker Swarm com Traefik como proxy reverso, Portainer para gerenciamento de contêineres e sistema de monitoramento avançado.

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/SEU_USUARIO/AutoDocker)](https://github.com/SEU_USUARIO/AutoDocker/releases)
[![GitHub license](https://img.shields.io/github/license/SEU_USUARIO/AutoDocker)](https://github.com/SEU_USUARIO/AutoDocker/blob/main/LICENSE)

## 🚀 Recursos

- **Instalação automatizada** de Docker Swarm, Traefik e Portainer
- **Interface visual** com banners ASCII Art para melhor experiência
- **Modo avançado** com sistemas de monitoramento e backup
- **Segurança aprimorada** com cabeçalhos HTTP de segurança e TLS 1.2+
- **Verificação de integridade** automática do sistema
- **Sistema de logs centralizado** para melhor diagnóstico

## 📋 Pré-requisitos

- Um servidor Linux (testado em Ubuntu e Debian)
- Acesso root ao servidor
- Um domínio apontando para o IP do servidor
- Portas 80 e 443 liberadas no firewall

## 💻 Como usar

### Instalação básica

```bash
# 1. Faça o download do script
curl -O https://raw.githubusercontent.com/SEU_USUARIO/AutoDocker/main/auto_instalador.sh

# 2. Dê permissão de execução
chmod +x auto_instalador.sh

# 3. Execute como root
sudo ./auto_instalador.sh
```

### Instalação avançada (com monitoramento e backup)

```bash
sudo ./auto_instalador.sh --avancado
```

## 🔄 Controle de versão

Este projeto usa versionamento semântico para garantir que você sempre possa reverter para uma versão estável anterior se necessário. Veja o [CHANGELOG](CHANGELOG.md) para detalhes sobre cada versão.

### Versões disponíveis:

- [v1.0.0](./versoes/v1.0.0/) - Versão estável com interface visual e modo avançado
- [v0.1.0](./versoes/v0.1.0/) - Versão inicial básica

## 🔒 Segurança

Este script configura automaticamente HTTPS para suas aplicações usando Let's Encrypt, mas você deve:

1. Configurar um firewall para proteger seu servidor
2. Alterar senhas padrão imediatamente após a instalação
3. Considerar implementar autenticação adicional para o Traefik Dashboard

## 🤝 Contribuindo

Contribuições são bem-vindas! Por favor, sinta-se à vontade para enviar um Pull Request ou abrir uma Issue.

## 📜 Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

## 📞 Suporte

Se você encontrar algum problema, por favor [abra uma issue](https://github.com/SEU_USUARIO/AutoDocker/issues/new) neste repositório. 