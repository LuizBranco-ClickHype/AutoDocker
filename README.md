# AutoDocker - Instalador Automático Docker Swarm

![AutoDocker Banner](https://via.placeholder.com/800x200/0d47a1/ffffff?text=AutoDocker)

Este é um script de autoinstalação que configura automaticamente um ambiente Docker Swarm com Traefik como proxy reverso, Portainer para gerenciamento de contêineres e sistema de monitoramento avançado.

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/LuizBranco-ClickHype/AutoDocker)](https://github.com/LuizBranco-ClickHype/AutoDocker/releases)
[![GitHub license](https://img.shields.io/github/license/LuizBranco-ClickHype/AutoDocker)](https://github.com/LuizBranco-ClickHype/AutoDocker/blob/main/LICENSE)

## 🚀 Recursos

- **Instalação automatizada** de Docker Swarm, Traefik e Portainer
- **Interface visual** com banners ASCII Art para melhor experiência
- **Monitoramento avançado** com Prometheus e Grafana
- **Sistema de backup automático** para volumes críticos
- **Segurança aprimorada** com cabeçalhos HTTP de segurança e TLS 1.2+
- **Verificação de integridade** automática do sistema
- **Sistema de logs centralizado** para melhor diagnóstico
- **Rate limiting** para proteção contra ataques
- **Diagnóstico automático** de problemas de conectividade
- **Configuração inteligente de firewall** para abrir portas necessárias

## 📋 Pré-requisitos

- Um servidor Linux (testado em Ubuntu e Debian)
- Acesso root ao servidor
- Um domínio apontando para o IP do servidor
- Portas 80 e 443 liberadas no firewall (configuração automática no sistema, mas verifique seu provedor VPS)

## 💻 Como usar

```bash
# 1. Faça o download do script
curl -O https://raw.githubusercontent.com/LuizBranco-ClickHype/AutoDocker/main/auto_instalador.sh

# 2. Dê permissão de execução
chmod +x auto_instalador.sh

# 3. Execute como root
sudo ./auto_instalador.sh
```

### Opções adicionais

```bash
# Para diagnóstico de problemas de conectividade
sudo ./auto_instalador.sh --diagnostico

# Para desativar todos os firewalls (somente para testes)
sudo ./auto_instalador.sh --no-firewall
```

## 🔍 Solução de problemas

Se você não conseguir acessar as aplicações após a instalação:

1. Verifique se o serviço está rodando: `docker service ls`
2. Verifique se o domínio está apontando para o IP correto do servidor
3. **Verifique o firewall do seu provedor VPS** - muitos provedores como AWS, DigitalOcean, Linode, etc. têm firewalls adicionais que precisam ser configurados manualmente no painel de controle
4. Execute o diagnóstico: `sudo ./auto_instalador.sh --diagnostico`

## 🔄 Controle de versão

Este projeto usa versionamento semântico para garantir que você sempre possa reverter para uma versão estável anterior se necessário. Veja o [CHANGELOG](CHANGELOG.md) para detalhes sobre cada versão.

### Versões disponíveis:

- [v1.1.1](./versoes/v1.1.1/) - Versão atual com diagnóstico de conectividade e gestão de firewall
- [v1.1.0](./versoes/v1.1.0/) - Versão com apenas modo avançado
- [v1.0.0](./versoes/v1.0.0/) - Versão com interface visual e opção de modo avançado
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

Se você encontrar algum problema, por favor [abra uma issue](https://github.com/LuizBranco-ClickHype/AutoDocker/issues/new) neste repositório. 