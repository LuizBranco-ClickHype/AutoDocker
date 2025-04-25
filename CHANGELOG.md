# Changelog do AutoDocker

Todas as alterações notáveis neste projeto serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/),
e este projeto adere ao [Versionamento Semântico](https://semver.org/lang/pt-BR/spec/v2.0.0.html).

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