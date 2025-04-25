# Changelog do AutoDocker

Todas as alterações notáveis neste projeto serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/),
e este projeto adere ao [Versionamento Semântico](https://semver.org/lang/pt-BR/spec/v2.0.0.html).

## [1.1.2] - 2025-04-26

### Adicionado
- Integração de Grafana e Prometheus com o Portainer para gerenciamento simplificado
- Opções para continuar instalação mesmo com falhas na configuração de firewall
- Arquivos de stack salvos em /opt/portainer/stacks para uso com Portainer

### Removido
- Funcionalidades de diagnóstico de conectividade (--diagnostico)
- Opção para desativar firewalls (--no-firewall)
- Mensagens específicas sobre solução de problemas
- Instalação automática da stack de monitoramento (agora gerenciada pelo Portainer)

### Melhorado
- Robustez do script para funcionar mesmo com problemas de firewall
- Interface do script com foco apenas na instalação
- Documentação com instruções mais diretas
- Experiência de gerenciamento integrada ao Portainer

## [1.1.1] - 2025-04-26

### Adicionado
- Ferramenta de diagnóstico de conectividade (`--diagnostico`)
- Opção para desativar todos os firewalls para testes (`--no-firewall`)
- Verificação e configuração automática de firewall do sistema
- Mensagens de ajuda específicas para configuração de firewall em diferentes provedores VPS

### Melhorado
- Exposição de portas na configuração do Traefik para melhor compatibilidade
- Instruções para diagnóstico de problemas de conexão
- Feedback mais detalhado sobre configurações de rede

## [1.1.0] - 2025-04-25

### Alterado
- Removido o modo básico de instalação, agora apenas o modo avançado está disponível
- Simplificação da interface de linha de comando
- Atualizada a documentação para refletir as mudanças

### Melhorado
- Experiência de instalação mais consistente e completa
- Segurança e monitoramento habilitados por padrão para todos os usuários

## [1.0.0] - 2023-07-22

### Adicionado
- Interface visual com ASCII Art para melhor experiência do usuário
- Modo avançado de instalação com `-a` ou `--avancado`
- Sistema de monitoramento com Prometheus e Grafana
- Sistema de logs centralizado com Loki e Promtail
- Backup automático de volumes críticos
- Verificação de integridade do sistema
- Cabeçalhos de segurança HTTP no Traefik
- Rate limiting para proteção contra ataques
- Banners visuais para diferentes estados da instalação
- Documentação detalhada no README

### Melhorado
- Formatação visual do script com cores e banners
- Seccionamento do script para melhor organização
- Configurações TLS mais seguras (TLS 1.2+)
- Mensagens de erro mais informativas
- Limites de recursos para contêineres
- Documentação de uso e troubleshooting

## [0.1.0] - 2023-07-01

### Adicionado
- Versão inicial do script básico
- Instalação do Docker Swarm
- Configuração básica do Traefik como proxy reverso
- Instalação do Portainer para gerenciamento
- Configuração de certificados SSL com Let's Encrypt 