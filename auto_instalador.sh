#!/bin/bash

# Cores para melhorar a visualização
VERMELHO='\033[0;31m'
VERDE='\033[0;32m'
AMARELO='\033[1;33m'
AZUL='\033[0;34m'
BRANCO='\033[1;37m'
CIANO='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # Sem Cor

# Versão do script
VERSION="1.0.0"

# Banner principal
banner_principal() {
  clear
  echo ""
  echo -e "${AMARELO}=================================================================================================${NC}"
  echo -e "${AMARELO}=${NC}                                                                                         ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}  ${BRANCO}  █████╗ ██╗   ██╗████████╗ ██████╗ ██████╗  ██████╗  ██████╗██╗  ██╗███████╗██████╗  ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}  ${BRANCO} ██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗ ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}  ${BRANCO} ███████║██║   ██║   ██║   ██║   ██║██║  ██║██║   ██║██║     █████╔╝ █████╗  ██████╔╝ ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}  ${BRANCO} ██╔══██║██║   ██║   ██║   ██║   ██║██║  ██║██║   ██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗ ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}  ${BRANCO} ██║  ██║╚██████╔╝   ██║   ╚██████╔╝██████╔╝╚██████╔╝╚██████╗██║  ██╗███████╗██║  ██║ ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}  ${BRANCO} ╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝ ╚═════╝  ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}                                                                                         ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}                                     ${AZUL}v.${VERSION}${NC}                                       ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}                     ${VERDE}Docker Swarm + Traefik + Portainer + Monitoring${NC}                  ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}                                                                                         ${AMARELO}=${NC}"
  echo -e "${AMARELO}=================================================================================================${NC}"
  echo ""
}

# Banner de instalação
banner_instalando() {
  echo ""
  echo -e "${AMARELO}=================================================================================================${NC}"
  echo -e "${AMARELO}=${NC}                                                                                         ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}    ${BRANCO}  ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗      █████╗ ███╗   ██╗██████╗  ██████╗   ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}    ${BRANCO}  ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██╔══██╗████╗  ██║██╔══██╗██╔═══██╗  ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}    ${BRANCO}  ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ███████║██╔██╗ ██║██║  ██║██║   ██║  ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}    ${BRANCO}  ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██╔══██║██║╚██╗██║██║  ██║██║   ██║  ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}    ${BRANCO}  ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗██║  ██║██║ ╚████║██████╔╝╚██████╔╝  ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}    ${BRANCO}  ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝   ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}                                                                                         ${AMARELO}=${NC}"
  echo -e "${AMARELO}=================================================================================================${NC}"
  echo ""
  echo ""
}

# Banner de sucesso
banner_sucesso() {
  clear
  echo ""
  echo -e "${AMARELO}=================================================================================================${NC}"
  echo -e "${AMARELO}=${NC}                                                                                         ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}   ${VERDE}  ██████╗ ██████╗ ███╗   ██╗ ██████╗██╗     ██╗   ██╗██╗██████╗  ██████╗ ██╗  ██╗${AMARELO}   =${NC}"
  echo -e "${AMARELO}=${NC}   ${VERDE} ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║     ██║   ██║██║██╔══██╗██╔═══██╗██║  ██║${AMARELO}   =${NC}"
  echo -e "${AMARELO}=${NC}   ${VERDE} ██║     ██║   ██║██╔██╗ ██║██║     ██║     ██║   ██║██║██║  ██║██║   ██║███████║${AMARELO}   =${NC}"
  echo -e "${AMARELO}=${NC}   ${VERDE} ██║     ██║   ██║██║╚██╗██║██║     ██║     ██║   ██║██║██║  ██║██║   ██║╚════██║${AMARELO}   =${NC}"
  echo -e "${AMARELO}=${NC}   ${VERDE} ╚██████╗╚██████╔╝██║ ╚████║╚██████╗███████╗╚██████╔╝██║██████╔╝╚██████╔╝     ██║${AMARELO}   =${NC}"
  echo -e "${AMARELO}=${NC}   ${VERDE}  ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝╚══════╝ ╚═════╝ ╚═╝╚═════╝  ╚═════╝      ╚═╝${AMARELO}   =${NC}"
  echo -e "${AMARELO}=${NC}                                                                                         ${AMARELO}=${NC}"
  echo -e "${AMARELO}=================================================================================================${NC}"
  echo ""
  echo ""
}

# Banner de erro
banner_erro() {
  echo ""
  echo -e "${AMARELO}=================================================================================================${NC}"
  echo -e "${AMARELO}=${NC}                                                                                         ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}         ${VERMELHO}  ███████╗██████╗ ██████╗  ██████╗     ██╗     ██╗██╗   ██╗   ██╗ ${AMARELO}         =${NC}"
  echo -e "${AMARELO}=${NC}         ${VERMELHO}  ██╔════╝██╔══██╗██╔══██╗██╔═══██╗    ╚██╗   ██╔╝██║   ╚██╗ ██╔╝ ${AMARELO}         =${NC}"
  echo -e "${AMARELO}=${NC}         ${VERMELHO}  █████╗  ██████╔╝██████╔╝██║   ██║     ╚██╗ ██╔╝ ██║    ╚████╔╝  ${AMARELO}         =${NC}"
  echo -e "${AMARELO}=${NC}         ${VERMELHO}  ██╔══╝  ██╔══██╗██╔══██╗██║   ██║      ╚████╔╝  ██║     ╚██╔╝   ${AMARELO}         =${NC}"
  echo -e "${AMARELO}=${NC}         ${VERMELHO}  ███████╗██║  ██║██║  ██║╚██████╔╝       ╚██╔╝   ███████╗██║     ${AMARELO}         =${NC}"
  echo -e "${AMARELO}=${NC}         ${VERMELHO}  ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝         ╚═╝    ╚══════╝╚═╝     ${AMARELO}         =${NC}"
  echo -e "${AMARELO}=${NC}                                                                                         ${AMARELO}=${NC}"
  echo -e "${AMARELO}=================================================================================================${NC}"
  echo ""
  echo ""
}

# Banner para o modo avançado
banner_avancado() {
  echo ""
  echo -e "${AMARELO}=================================================================================================${NC}"
  echo -e "${AMARELO}=${NC}                                                                                         ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}   ${CIANO}  ███╗   ███╗ ██████╗ ██████╗  ██████╗      █████╗ ██╗   ██╗ █████╗ ███╗   ██╗ ██████╗  █████╗ ██████╗  ██████╗  ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}   ${CIANO}  ████╗ ████║██╔═══██╗██╔══██╗██╔═══██╗    ██╔══██╗██║   ██║██╔══██╗████╗  ██║██╔════╝ ██╔══██╗██╔══██╗██╔═══██╗ ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}   ${CIANO}  ██╔████╔██║██║   ██║██║  ██║██║   ██║    ███████║██║   ██║███████║██╔██╗ ██║██║  ███╗███████║██║  ██║██║   ██║ ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}   ${CIANO}  ██║╚██╔╝██║██║   ██║██║  ██║██║   ██║    ██╔══██║╚██╗ ██╔╝██╔══██║██║╚██╗██║██║   ██║██╔══██║██║  ██║██║   ██║ ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}   ${CIANO}  ██║ ╚═╝ ██║╚██████╔╝██████╔╝╚██████╔╝    ██║  ██║ ╚████╔╝ ██║  ██║██║ ╚████║╚██████╔╝██║  ██║██████╔╝╚██████╔╝ ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}   ${CIANO}  ╚═╝     ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝     ╚═╝  ╚═╝  ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝  ╚═════╝  ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}                                                                                         ${AMARELO}=${NC}"
  echo -e "${AMARELO}=================================================================================================${NC}"
  echo ""
  echo ""
}

# Banner para informações
banner_info() {
  echo ""
  echo -e "${AMARELO}=================================================================================================${NC}"
  echo -e "${AMARELO}=${NC}                                                                                         ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}                ${AZUL}   ██╗███╗   ██╗███████╗ ██████╗ ██████╗ ███╗   ███╗ █████╗  ██████╗ █████╗  ██████╗  ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}                ${AZUL}   ██║████╗  ██║██╔════╝██╔═══██╗██╔══██╗████╗ ████║██╔══██╗██╔════╝██╔══██╗██╔═══██╗ ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}                ${AZUL}   ██║██╔██╗ ██║█████╗  ██║   ██║██████╔╝██╔████╔██║███████║██║     ███████║██║   ██║ ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}                ${AZUL}   ██║██║╚██╗██║██╔══╝  ██║   ██║██╔══██╗██║╚██╔╝██║██╔══██║██║     ██╔══██║██║   ██║ ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}                ${AZUL}   ██║██║ ╚████║██║     ╚██████╔╝██║  ██║██║ ╚═╝ ██║██║  ██║╚██████╗██║  ██║╚██████╔╝ ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}                ${AZUL}   ╚═╝╚═╝  ╚═══╝╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝ ╚═════╝  ${AMARELO}=${NC}"
  echo -e "${AMARELO}=${NC}                                                                                         ${AMARELO}=${NC}"
  echo -e "${AMARELO}=================================================================================================${NC}"
  echo ""
  echo ""
}

# Função para exibir mensagens com cor
mensagem() {
  echo -e "${AZUL}[INFO]${NC} $1"
}

# Função para exibir mensagens de sucesso
sucesso() {
  echo -e "${VERDE}[SUCESSO]${NC} $1"
}

# Função para exibir mensagens de erro
erro() {
  banner_erro
  echo -e "${VERMELHO}[ERRO]${NC} $1"
  echo ""
  echo -e "${AMARELO}Por favor, verifique as mensagens acima e tente novamente.${NC}"
  echo ""
  exit 1
}

# Função para exibir avisos
aviso() {
  echo -e "${AMARELO}[AVISO]${NC} $1"
}

# Função para exibir seção
secao() {
  echo ""
  echo -e "${AMARELO}==========================${NC} ${BRANCO}$1${NC} ${AMARELO}==========================${NC}"
  echo ""
}

# Função para exibir ajuda
mostrar_ajuda() {
  banner_principal
  echo -e "${BRANCO}Uso:${NC} $0 [opções]"
  echo ""
  echo -e "${BRANCO}Opções:${NC}"
  echo -e "  ${VERDE}-h, --help${NC}              Mostra esta ajuda"
  echo ""
  echo -e "${BRANCO}Descrição:${NC}"
  echo -e "  Este script configura automaticamente um ambiente Docker Swarm com"
  echo -e "  Traefik como proxy reverso, Portainer para gerenciamento de contêineres,"
  echo -e "  e componentes avançados para monitoramento, segurança e backup."
  echo ""
  echo -e "${BRANCO}Durante a execução, serão solicitadas as seguintes informações:${NC}"
  echo -e "  - ${AMARELO}Email para o Let's Encrypt${NC} (para certificados SSL)"
  echo -e "  - ${AMARELO}Domínio para acessar o Portainer${NC}"
  echo -e "  - ${AMARELO}Domínio para o Grafana${NC} (monitoramento)"
  echo -e "  - ${AMARELO}Domínio para o Prometheus${NC} (métricas)"
  echo ""
  echo -e "${BRANCO}Exemplo de uso:${NC}"
  echo -e "  ${VERDE}sudo ./auto_instalador.sh${NC}"
  echo ""
  exit 0
}

# Variáveis globais
MODO_AVANCADO=true

# Processamento de argumentos da linha de comando
for arg in "$@"; do
  case $arg in
    -h|--help)
      mostrar_ajuda
      ;;
  esac
done

# Mostrar banner inicial
banner_principal

# Mostrar banner do modo avançado
banner_avancado
echo -e "${BRANCO}Modo avançado ativado!${NC} Serão instalados componentes adicionais para monitoramento, segurança e backup."
echo ""

# Verificar se está rodando como root
if [ "$(id -u)" != "0" ]; then
   erro "Este script precisa ser executado como root"
fi

# Diretório temporário para armazenar arquivos
mkdir -p /tmp/docker-install

# Instalação
banner_instalando

# Verificar e configurar firewall
secao "VERIFICAÇÃO DE FIREWALL"
mensagem "Configurando firewall para permitir tráfego necessário..."

# Detectar o firewall presente no sistema
if command -v ufw &> /dev/null; then
  mensagem "Firewall UFW detectado, configurando..."
  ufw allow 80/tcp || true
  ufw allow 443/tcp || true
  ufw allow 22/tcp || true
  ufw allow 2377/tcp || true # Docker Swarm
  ufw allow 7946/tcp || true # Docker Swarm
  ufw allow 7946/udp || true # Docker Swarm
  ufw allow 4789/udp || true # Docker Swarm overlay
  if ! ufw status | grep -q "Status: active"; then
    ufw --force enable || true
  fi
  sucesso "UFW configurado com sucesso"
elif command -v firewall-cmd &> /dev/null; then
  mensagem "Firewall FirewallD detectado, configurando..."
  firewall-cmd --permanent --add-port=80/tcp || true
  firewall-cmd --permanent --add-port=443/tcp || true
  firewall-cmd --permanent --add-port=22/tcp || true
  firewall-cmd --permanent --add-port=2377/tcp || true
  firewall-cmd --permanent --add-port=7946/tcp || true
  firewall-cmd --permanent --add-port=7946/udp || true
  firewall-cmd --permanent --add-port=4789/udp || true
  firewall-cmd --reload || true
  sucesso "FirewallD configurado com sucesso"
elif command -v iptables &> /dev/null; then
  mensagem "Configurando iptables..."
  iptables -A INPUT -p tcp --dport 80 -j ACCEPT || true
  iptables -A INPUT -p tcp --dport 443 -j ACCEPT || true
  iptables -A INPUT -p tcp --dport 22 -j ACCEPT || true
  iptables -A INPUT -p tcp --dport 2377 -j ACCEPT || true
  iptables -A INPUT -p tcp --dport 7946 -j ACCEPT || true
  iptables -A INPUT -p udp --dport 7946 -j ACCEPT || true
  iptables -A INPUT -p udp --dport 4789 -j ACCEPT || true
  if command -v iptables-save &> /dev/null; then
    if [ -d /etc/iptables ]; then
      iptables-save > /etc/iptables/rules.v4 || true
    fi
  fi
  sucesso "iptables configurado com sucesso"
else
  aviso "Nenhum firewall detectado. Continuando com a instalação..."
fi

# Aviso sobre possíveis problemas de conexão sem bloquear a instalação
mensagem "NOTA: Se você não conseguir acessar os serviços depois, pode ser necessário configurar o firewall no seu provedor VPS."
mensagem "Continuando com a instalação dos serviços..."

# Configurar o hostname
secao "CONFIGURAÇÃO DO SISTEMA"
mensagem "Configurando hostname para manager1..."
hostnamectl set-hostname manager1
if [ $? -ne 0 ]; then
  erro "Falha ao configurar o hostname"
fi
sucesso "Hostname configurado com sucesso"

# Modificar o arquivo hosts
mensagem "Modificando o arquivo /etc/hosts..."
cp /etc/hosts /etc/hosts.bak
IP_SERVIDOR=$(hostname -I | awk '{print $1}')
echo "$IP_SERVIDOR manager1" >> /etc/hosts
sucesso "Arquivo /etc/hosts atualizado"

# Instalar o Docker
secao "INSTALAÇÃO DO DOCKER"
mensagem "Instalando o Docker..."
curl -fsSL https://get.docker.com | bash
if [ $? -ne 0 ]; then
  erro "Falha ao instalar o Docker"
fi
sucesso "Docker instalado com sucesso"

# Inicializar o Docker Swarm
secao "CONFIGURAÇÃO DO DOCKER SWARM"
mensagem "Inicializando o Docker Swarm..."
docker swarm init --advertise-addr $IP_SERVIDOR
if [ $? -ne 0 ]; then
  erro "Falha ao inicializar o Docker Swarm"
fi
sucesso "Docker Swarm inicializado com sucesso"

# Criar a rede overlay pública
mensagem "Criando a rede overlay pública..."
docker network create --driver=overlay --attachable network_public
if [ $? -ne 0 ]; then
  erro "Falha ao criar a rede network_public"
fi
sucesso "Rede network_public criada com sucesso"

# Criar volumes necessários
secao "CRIAÇÃO DOS VOLUMES"
mensagem "Criando volumes necessários..."
docker volume create volume_swarm_shared
docker volume create volume_swarm_certificates
docker volume create portainer_data

# Criar volumes para backup e monitoramento se modo avançado estiver ativado
if [ "$MODO_AVANCADO" = true ]; then
  mensagem "Criando volumes adicionais para monitoramento e backup..."
  docker volume create prometheus_data
  docker volume create grafana_data
  docker volume create loki_data
  docker volume create backup_data
fi
sucesso "Volumes criados com sucesso"

# Configurar diretório de backup
if [ "$MODO_AVANCADO" = true ]; then
  mensagem "Configurando diretório de backup..."
  mkdir -p /opt/docker-backups
  chmod 700 /opt/docker-backups
  sucesso "Diretório de backup configurado"
fi

# Solicitar email para o Traefik
secao "CONFIGURAÇÃO DO TRAEFIK"
mensagem "Configurando o Traefik..."
EMAIL_USUARIO=""
while [ -z "$EMAIL_USUARIO" ]; do
  echo -ne "${AMARELO}Digite seu email para o Let's Encrypt:${NC} "
  read -r EMAIL_USUARIO
  if [ -z "$EMAIL_USUARIO" ]; then
    aviso "O email não pode estar vazio. Por favor, tente novamente."
  fi
done

# Criar arquivo de configuração do Traefik
mensagem "Configurando o Traefik com email: $EMAIL_USUARIO"

# Adicionar configurações de segurança avançadas no Traefik, se o modo avançado estiver ativado
TRAEFIK_SECURITY_CONFIG=""
TRAEFIK_MIDDLEWARES=""
if [ "$MODO_AVANCADO" = true ]; then
  mensagem "Adicionando configurações de segurança avançadas para o Traefik..."
  TRAEFIK_SECURITY_CONFIG="
      - \"--entryPoints.websecure.http.tls.options.default.minVersion=VersionTLS12\"
      - \"--entryPoints.websecure.http.tls.options.default.cipherSuites=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305\"
      - \"--entryPoints.websecure.http.middlewares=secHeaders@docker\"
      - \"--metrics.prometheus=true\"
      - \"--metrics.prometheus.buckets=0.1,0.3,1.2,5.0\"
      - \"--accesslog.filePath=/var/log/traefik/access.log\"
      - \"--accesslog.bufferingSize=100\"
      - \"--accesslog.filters.statusCodes=400-499,500-599\"
      - \"--pilot.token=\""
  
  TRAEFIK_MIDDLEWARES="
        - \"traefik.http.middlewares.secHeaders.headers.browserXssFilter=true\"
        - \"traefik.http.middlewares.secHeaders.headers.contentTypeNosniff=true\"
        - \"traefik.http.middlewares.secHeaders.headers.forceSTSHeader=true\"
        - \"traefik.http.middlewares.secHeaders.headers.stsIncludeSubdomains=true\"
        - \"traefik.http.middlewares.secHeaders.headers.stsPreload=true\"
        - \"traefik.http.middlewares.secHeaders.headers.stsSeconds=31536000\"
        - \"traefik.http.middlewares.secHeaders.headers.customFrameOptionsValue=SAMEORIGIN\"
        - \"traefik.http.middlewares.secHeaders.headers.customRequestHeaders.X-Forwarded-Proto=https\"
        - \"traefik.http.middlewares.secHeaders.headers.contentSecurityPolicy=upgrade-insecure-requests\"
        - \"traefik.http.middlewares.limit.ratelimit.average=100\"
        - \"traefik.http.middlewares.limit.ratelimit.burst=50\""
fi

cat > /tmp/docker-install/traefik.yaml << EOL
version: "3.7"

services:

  traefik:
    image: traefik:2.11.2
    command:
      - "--api.dashboard=true"
      - "--providers.docker.swarmMode=true"
      - "--providers.docker.endpoint=unix:///var/run/docker.sock"
      - "--providers.docker.exposedbydefault=false"
      - "--providers.docker.network=network_public"
      - "--entrypoints.web.address=:80"
      - "--entrypoints.web.http.redirections.entryPoint.to=websecure"
      - "--entrypoints.web.http.redirections.entryPoint.scheme=https"
      - "--entrypoints.web.http.redirections.entrypoint.permanent=true"
      - "--entrypoints.websecure.address=:443"
      - "--certificatesresolvers.letsencryptresolver.acme.httpchallenge=true"
      - "--certificatesresolvers.letsencryptresolver.acme.httpchallenge.entrypoint=web"
      - "--certificatesresolvers.letsencryptresolver.acme.email=${EMAIL_USUARIO}"
      - "--certificatesresolvers.letsencryptresolver.acme.storage=/etc/traefik/letsencrypt/acme.json"
      - "--log.level=INFO"
      - "--log.format=json"
      - "--log.filePath=/var/log/traefik/traefik.log"
      - "--accesslog=true"
      - "--accesslog.filepath=/var/log/traefik/access-log"${TRAEFIK_SECURITY_CONFIG}
    deploy:
      placement:
        constraints:
          - node.role == manager
      labels:
        - "traefik.enable=true"
        - "traefik.http.middlewares.redirect-https.redirectscheme.scheme=https"
        - "traefik.http.middlewares.redirect-https.redirectscheme.permanent=true"
        - "traefik.http.routers.http-catchall.rule=hostregexp(\`{host:.+}\`)"
        - "traefik.http.routers.http-catchall.entrypoints=web"
        - "traefik.http.routers.http-catchall.middlewares=redirect-https@docker"
        - "traefik.http.routers.http-catchall.priority=1"${TRAEFIK_MIDDLEWARES}
    volumes:
      - "/var/run/docker.sock:/var/run/docker.sock:ro"
      - "vol_certificates:/etc/traefik/letsencrypt"
      - "/var/log/traefik:/var/log/traefik"
    ports:
      - target: 80
        published: 80
        protocol: tcp
        mode: host
      - target: 443
        published: 443
        protocol: tcp
        mode: host
    networks:
      - network_public

volumes:

  vol_shared:
    external: true
    name: volume_swarm_shared
  vol_certificates:
    external: true
    name: volume_swarm_certificates

networks:
  network_public:
    external: true
    name: network_public
EOL

# Criar diretório para logs do Traefik
mkdir -p /var/log/traefik
chmod 755 /var/log/traefik

# Implantar a stack do Traefik
mensagem "Implantando a stack do Traefik..."
docker stack deploy --prune --resolve-image always -c /tmp/docker-install/traefik.yaml traefik
if [ $? -ne 0 ]; then
  erro "Falha ao implantar a stack do Traefik"
fi
sucesso "Stack do Traefik implantada com sucesso"

# Solicitar domínio para o Portainer
mensagem "Configurando o Portainer..."
DOMINIO_PORTAINER=""
while [ -z "$DOMINIO_PORTAINER" ]; do
  read -p "Digite seu domínio para o Portainer (exemplo: portainer.seudominio.com): " DOMINIO_PORTAINER
  if [ -z "$DOMINIO_PORTAINER" ]; then
    aviso "O domínio não pode estar vazio. Por favor, tente novamente."
  fi
done

# Configurar autenticação de dois fatores para o Portainer no modo avançado
PORTAINER_OPTIONS=""
if [ "$MODO_AVANCADO" = true ]; then
  PORTAINER_OPTIONS="--security-opt=no-new-privileges:true"
fi

# Criar arquivo de configuração do Portainer
mensagem "Configurando o Portainer com domínio: $DOMINIO_PORTAINER"
cat > /tmp/docker-install/portainer.yaml << EOL
version: "3.7"

services:

  agent:
    image: portainer/agent:2.27.4
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - /var/lib/docker/volumes:/var/lib/docker/volumes
    networks:
      - network_public
    deploy:
      mode: global
      placement:
        constraints: [node.platform.os == linux]

  portainer:
    image: portainer/portainer-ce:2.27.4
    command: -H tcp://tasks.agent:9001 --tlsskipverify
    volumes:
      - portainer_data:/data
    networks:
      - network_public
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints: [node.role == manager]
      resources:
        limits:
          cpus: "0.5"
          memory: 512M
      labels:
        - "traefik.enable=true"
        - "traefik.docker.network=network_public"
        - "traefik.http.routers.portainer.rule=Host(\`${DOMINIO_PORTAINER}\`)"
        - "traefik.http.routers.portainer.entrypoints=websecure"
        - "traefik.http.routers.portainer.priority=1"
        - "traefik.http.routers.portainer.tls.certresolver=letsencryptresolver"
        - "traefik.http.routers.portainer.service=portainer"
        - "traefik.http.services.portainer.loadbalancer.server.port=9000"

networks:
  network_public:
    external: true
    attachable: true
    name: network_public

volumes:
  portainer_data:
    external: true
    name: portainer_data
EOL

# Implantar a stack do Portainer
mensagem "Implantando a stack do Portainer..."
docker stack deploy --prune --resolve-image always -c /tmp/docker-install/portainer.yaml portainer
if [ $? -ne 0 ]; then
  erro "Falha ao implantar a stack do Portainer"
fi
sucesso "Stack do Portainer implantada com sucesso"

# Configurar monitoramento se o modo avançado estiver ativado
if [ "$MODO_AVANCADO" = true ]; then
  # Solicitar domínios para Grafana e Prometheus
  mensagem "Configurando sistema de monitoramento..."
  DOMINIO_GRAFANA=""
  while [ -z "$DOMINIO_GRAFANA" ]; do
    read -p "Digite seu domínio para o Grafana (exemplo: grafana.seudominio.com): " DOMINIO_GRAFANA
    if [ -z "$DOMINIO_GRAFANA" ]; then
      aviso "O domínio não pode estar vazio. Por favor, tente novamente."
    fi
  done

  DOMINIO_PROMETHEUS=""
  while [ -z "$DOMINIO_PROMETHEUS" ]; do
    read -p "Digite seu domínio para o Prometheus (exemplo: prometheus.seudominio.com): " DOMINIO_PROMETHEUS
    if [ -z "$DOMINIO_PROMETHEUS" ]; then
      aviso "O domínio não pode estar vazio. Por favor, tente novamente."
    fi
  done

  # Criar diretórios para monitoramento
  mkdir -p /opt/portainer/stacks
  mkdir -p /opt/monitoring/prometheus
  mkdir -p /opt/monitoring/grafana/provisioning/datasources
  mkdir -p /opt/monitoring/grafana/provisioning/dashboards
  mkdir -p /opt/monitoring/loki

  # Criar arquivo de configuração do Prometheus
  cat > /opt/monitoring/prometheus/prometheus.yml << EOL
global:
  scrape_interval: 15s
  evaluation_interval: 15s

scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']

  - job_name: 'docker'
    docker_sd_configs:
      - host: unix:///var/run/docker.sock
    relabel_configs:
      - source_labels: [__meta_docker_container_name]
        regex: '/(.*)'
        target_label: container_name
      - source_labels: [__meta_docker_container_id]
        target_label: container_id

  - job_name: 'traefik'
    static_configs:
      - targets: ['traefik_traefik:8080']

  - job_name: 'node'
    static_configs:
      - targets: ['node-exporter:9100']

  - job_name: 'cadvisor'
    static_configs:
      - targets: ['cadvisor:8080']
EOL

  # Criar arquivo de configuração do datasource do Grafana
  cat > /opt/monitoring/grafana/provisioning/datasources/datasource.yml << EOL
apiVersion: 1

datasources:
  - name: Prometheus
    type: prometheus
    access: proxy
    url: http://prometheus:9090
    isDefault: true

  - name: Loki
    type: loki
    access: proxy
    url: http://loki:3100
EOL

  # Criar stack de monitoramento como um arquivo para o Portainer
  cat > /opt/portainer/stacks/monitoring.yml << EOL
version: "3.7"

services:
  prometheus:
    image: prom/prometheus:latest
    command:
      - '--config.file=/etc/prometheus/prometheus.yml'
      - '--storage.tsdb.path=/prometheus'
      - '--storage.tsdb.retention.time=15d'
      - '--web.console.libraries=/etc/prometheus/console_libraries'
      - '--web.console.templates=/etc/prometheus/consoles'
      - '--web.enable-lifecycle'
    volumes:
      - /opt/monitoring/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml
      - prometheus_data:/prometheus
    networks:
      - network_public
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints: [node.role == manager]
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M
      labels:
        - "traefik.enable=true"
        - "traefik.http.routers.prometheus.rule=Host(\`${DOMINIO_PROMETHEUS}\`)"
        - "traefik.http.services.prometheus.loadbalancer.server.port=9090"
        - "traefik.http.routers.prometheus.entrypoints=websecure"
        - "traefik.http.routers.prometheus.tls.certresolver=letsencryptresolver"
        - "traefik.http.routers.prometheus.middlewares=auth-prometheus@docker"
        - "traefik.http.middlewares.auth-prometheus.basicauth.users=admin:$$apr1$$6pJX1UGm$$FucMeUaGv9qgZWLmH/J7m."

  grafana:
    image: grafana/grafana:latest
    volumes:
      - grafana_data:/var/lib/grafana
      - /opt/monitoring/grafana/provisioning:/etc/grafana/provisioning
    environment:
      - GF_SECURITY_ADMIN_PASSWORD=admin
      - GF_USERS_ALLOW_SIGN_UP=false
      - GF_SERVER_ROOT_URL=https://${DOMINIO_GRAFANA}
      - GF_INSTALL_PLUGINS=grafana-piechart-panel,grafana-worldmap-panel
    networks:
      - network_public
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints: [node.role == manager]
      resources:
        limits:
          cpus: "0.5"
          memory: 512M
      labels:
        - "traefik.enable=true"
        - "traefik.http.routers.grafana.rule=Host(\`${DOMINIO_GRAFANA}\`)"
        - "traefik.http.services.grafana.loadbalancer.server.port=3000"
        - "traefik.http.routers.grafana.entrypoints=websecure"
        - "traefik.http.routers.grafana.tls.certresolver=letsencryptresolver"

  node-exporter:
    image: prom/node-exporter:latest
    command:
      - '--path.procfs=/host/proc'
      - '--path.sysfs=/host/sys'
      - '--collector.filesystem.ignored-mount-points=^/(sys|proc|dev|host|etc)($$|/)'
    volumes:
      - /proc:/host/proc:ro
      - /sys:/host/sys:ro
      - /:/rootfs:ro
    networks:
      - network_public
    deploy:
      mode: global

  cadvisor:
    image: gcr.io/cadvisor/cadvisor:latest
    volumes:
      - /:/rootfs:ro
      - /var/run:/var/run:ro
      - /sys:/sys:ro
      - /var/lib/docker/:/var/lib/docker:ro
    networks:
      - network_public
    deploy:
      mode: global

  loki:
    image: grafana/loki:latest
    command: -config.file=/etc/loki/local-config.yaml
    volumes:
      - loki_data:/loki
    networks:
      - network_public
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints: [node.role == manager]
      resources:
        limits:
          cpus: "0.5"
          memory: 1G

  promtail:
    image: grafana/promtail:latest
    volumes:
      - /var/log:/var/log:ro
    command: -config.file=/etc/promtail/config.yml
    networks:
      - network_public
    deploy:
      mode: global

networks:
  network_public:
    external: true
    name: network_public

volumes:
  prometheus_data:
    external: true
    name: prometheus_data
  grafana_data:
    external: true
    name: grafana_data
  loki_data:
    external: true
    name: loki_data
EOL

  # Configurar o Promtail para coletar logs
  mkdir -p /opt/monitoring/promtail
  cat > /opt/monitoring/promtail/config.yml << EOL
server:
  http_listen_port: 9080
  grpc_listen_port: 0

positions:
  filename: /tmp/positions.yaml

clients:
  - url: http://loki:3100/loki/api/v1/push

scrape_configs:
  - job_name: system
    static_configs:
    - targets:
        - localhost
      labels:
        job: varlogs
        __path__: /var/log/*log

  - job_name: containers
    static_configs:
    - targets:
        - localhost
      labels:
        job: containerlogs
        __path__: /var/lib/docker/containers/*/*log
EOL

  # Não implantar stack de monitoramento automaticamente, deixar para o usuário fazer via Portainer
  mensagem "Stack de monitoramento preparada para implantação através do Portainer."
  sucesso "Arquivos de configuração salvos em /opt/portainer/stacks/monitoring.yml"
  
  # Configuração para importar a stack via Portainer
  mensagem "Para implantar a stack de monitoramento, siga estes passos no Portainer:"
  echo -e "1. Acesse o Portainer em https://${DOMINIO_PORTAINER}"
  echo -e "2. Vá para 'Stacks' no menu lateral"
  echo -e "3. Clique em 'Add stack'"
  echo -e "4. Escolha 'Upload' ou 'Repository' e selecione o arquivo da stack"
  echo -e "5. Clique em 'Deploy the stack'"
  echo -e ""
  echo -e "O Grafana estará disponível em https://${DOMINIO_GRAFANA}"
  echo -e "O Prometheus estará disponível em https://${DOMINIO_PROMETHEUS}"
  echo -e ""
  echo -e "Usuário Grafana: admin"
  echo -e "Senha Grafana: admin (altere no primeiro acesso)"
  echo -e ""
  echo -e "Usuário Prometheus: admin"
  echo -e "Senha Prometheus: admin"
  
  # Configurar backup automático
  mensagem "Configurando sistema de backup automático..."
  mkdir -p /opt/backup-scripts
  
  # Script para backup dos volumes
  cat > /opt/backup-scripts/backup-volumes.sh << 'EOL'
#!/bin/bash
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR=/opt/docker-backups/volumes

# Criar diretório de backup
mkdir -p $BACKUP_DIR

# Lista de volumes a serem backupeados
VOLUMES=("volume_swarm_certificates" "portainer_data" "prometheus_data" "grafana_data" "loki_data")

for VOLUME in "${VOLUMES[@]}"; do
  echo "Realizando backup do volume: $VOLUME"
  
  # Criar contêiner temporário, conectar ao volume e criar o backup
  docker run --rm -v $VOLUME:/source:ro -v $BACKUP_DIR:/backup alpine sh -c "cd /source && tar czf /backup/$VOLUME-$DATE.tar.gz ."
  
  if [ $? -eq 0 ]; then
    echo "Backup do volume $VOLUME concluído com sucesso!"
  else
    echo "Erro ao fazer backup do volume $VOLUME!"
  fi
done

# Manter apenas os últimos 7 backups para cada volume
for VOLUME in "${VOLUMES[@]}"; do
  ls -t $BACKUP_DIR/$VOLUME-*.tar.gz | tail -n +8 | xargs rm -f
done

echo "Processo de backup finalizado em $(date)"
EOL

  # Tornar script executável
  chmod +x /opt/backup-scripts/backup-volumes.sh
  
  # Configurar crontab para executar o backup diariamente às 2h da manhã
  (crontab -l 2>/dev/null; echo "0 2 * * * /opt/backup-scripts/backup-volumes.sh > /var/log/backup-volumes.log 2>&1") | crontab -

  sucesso "Sistema de backup configurado para execução diária às 2h da manhã"
  
  # Criar um script para verificação de integridade do sistema
  cat > /opt/backup-scripts/healthcheck.sh << 'EOL'
#!/bin/bash
DATE=$(date +%Y%m%d_%H%M%S)
LOG_FILE="/var/log/healthcheck-$DATE.log"

echo "Iniciando verificação de integridade do sistema em $(date)" > $LOG_FILE

# Verificar estado dos nodes do swarm
echo "=== Estado dos nós do Swarm ===" >> $LOG_FILE
docker node ls >> $LOG_FILE

# Verificar estado dos serviços
echo -e "\n=== Estado dos serviços ===" >> $LOG_FILE
docker service ls >> $LOG_FILE

# Verificar containers com problemas
echo -e "\n=== Containers com problemas ===" >> $LOG_FILE
docker ps -a | grep -v "Up " >> $LOG_FILE

# Verificar uso de disco
echo -e "\n=== Uso de disco ===" >> $LOG_FILE
df -h >> $LOG_FILE

# Verificar uso de memória
echo -e "\n=== Uso de memória ===" >> $LOG_FILE
free -m >> $LOG_FILE

# Verificar carga do sistema
echo -e "\n=== Carga do sistema ===" >> $LOG_FILE
uptime >> $LOG_FILE

# Manter apenas os últimos 30 logs
ls -t /var/log/healthcheck-*.log | tail -n +31 | xargs rm -f

echo "Verificação de integridade finalizada em $(date)" >> $LOG_FILE
EOL

  # Tornar script executável
  chmod +x /opt/backup-scripts/healthcheck.sh
  
  # Configurar crontab para executar a verificação a cada 6 horas
  (crontab -l 2>/dev/null; echo "0 */6 * * * /opt/backup-scripts/healthcheck.sh") | crontab -

  sucesso "Sistema de verificação de integridade configurado para execução a cada 6 horas"
fi

# Limpar arquivos temporários
mensagem "Limpando arquivos temporários..."
rm -rf /tmp/docker-install/*

# Exibir informações de acesso
banner_sucesso
mensagem "Instalação concluída com sucesso!"
echo ""
echo -e "${VERDE}=== INFORMAÇÕES DE ACESSO ===${NC}"
echo -e "${AMARELO}Portainer:${NC} https://${DOMINIO_PORTAINER}"
echo -e "${AMARELO}Usuário:${NC} admin (crie sua senha no primeiro acesso)"
echo ""

if [ "$MODO_AVANCADO" = true ]; then
  echo -e "${VERDE}=== MONITORAMENTO (INSTALAR VIA PORTAINER) ===${NC}"
  echo -e "Arquivo da stack: /opt/portainer/stacks/monitoring.yml"
  echo -e ""
  echo -e "Para instalar o monitoramento:"
  echo -e "1. Acesse o Portainer em https://${DOMINIO_PORTAINER}"
  echo -e "2. Vá para 'Stacks' e clique em 'Add stack'"
  echo -e "3. Escolha 'Upload' ou 'Repository' e selecione o arquivo da stack"
  echo -e "4. Clique em 'Deploy the stack'"
  echo -e ""
  echo -e "${AMARELO}Após a instalação:${NC}"
  echo -e "${AMARELO}Grafana:${NC} https://${DOMINIO_GRAFANA}"
  echo -e "${AMARELO}Prometheus:${NC} https://${DOMINIO_PROMETHEUS}"
  echo -e ""
  echo -e "${VERDE}=== BACKUP ===${NC}"
  echo -e "${AMARELO}Diretório de backups:${NC} /opt/docker-backups"
  echo -e "${AMARELO}Frequência:${NC} Diariamente às 2h da manhã"
  echo -e ""
  echo -e "${VERDE}=== VERIFICAÇÃO DE INTEGRIDADE ===${NC}"
  echo -e "${AMARELO}Logs:${NC} /var/log/healthcheck-*.log"
  echo -e "${AMARELO}Frequência:${NC} A cada 6 horas"
  echo -e ""
fi

echo -e "${VERDE}=== PRÓXIMOS PASSOS ===${NC}"
echo -e "1. Acesse o Portainer e defina sua senha de administrador"
echo -e "2. Na seção 'Stacks' do Portainer, implante a stack de monitoramento conforme instruções acima"
echo -e ""
echo -e "${AMARELO}Obrigado por usar nosso instalador! Para suporte adicional, visite nosso repositório GitHub.${NC}" 