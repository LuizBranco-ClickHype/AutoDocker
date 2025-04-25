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
  echo -e "${AMARELO}=${NC}                     ${VERDE}Docker Swarm + Traefik + Portainer${NC}                  ${AMARELO}=${NC}"
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
  echo -e "  Traefik como proxy reverso e Portainer para gerenciamento de contêineres."
  echo ""
  echo -e "${BRANCO}Durante a execução, serão solicitadas as seguintes informações:${NC}"
  echo -e "  - ${AMARELO}Email para o Let's Encrypt${NC} (para certificados SSL)"
  echo -e "  - ${AMARELO}Domínio para acessar o Portainer${NC}"
  echo ""
  echo -e "${BRANCO}Exemplo de uso:${NC}"
  echo -e "  ${VERDE}sudo ./auto_instalador.sh${NC}"
  echo ""
  exit 0
}

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

# Adicionar função para verificar quando o Portainer estiver no ar antes da seção de volumes
secao "CRIAÇÃO DOS VOLUMES"
mensagem "Criando volumes necessários..."

# Função para verificar quando o Portainer estiver no ar
verificar_portainer_disponivel() {
  mensagem "Verificando se o Portainer está disponível..."
  
  local MAX_TENTATIVAS=30
  local INTERVALO=10
  local tentativas=0
  
  echo ""
  echo -e "${AMARELO}Aguardando o Portainer ficar disponível...${NC}"
  echo -e "Isso pode levar algum tempo enquanto o contêiner inicializa e o certificado SSL é obtido."
  echo -e "O script verificará a cada ${INTERVALO} segundos, por até $((MAX_TENTATIVAS * INTERVALO / 60)) minutos."
  echo ""
  
  while [ $tentativas -lt $MAX_TENTATIVAS ]; do
    # Verificar se o serviço do Portainer está rodando com réplicas esperadas
    REPLICAS_ATIVAS=$(docker service ls --filter "name=portainer_portainer" --format "{{.Replicas}}" | grep -o "[0-9]*/[0-9]*" | cut -d/ -f1)
    REPLICAS_ESPERADAS=$(docker service ls --filter "name=portainer_portainer" --format "{{.Replicas}}" | grep -o "[0-9]*/[0-9]*" | cut -d/ -f2)
    
    if [[ ! -z "$REPLICAS_ATIVAS" && ! -z "$REPLICAS_ESPERADAS" && "$REPLICAS_ATIVAS" -eq "$REPLICAS_ESPERADAS" ]]; then
      # Se as réplicas estão ativas, verificar se o serviço está respondendo
      # Não verificamos via HTTP porque pode estar usando SSL com certificado auto-assinado inicialmente
      if docker service ps portainer_portainer | grep -q "Running"; then
        echo ""
        echo -e "${VERDE}[SUCESSO]${NC} Portainer está disponível!"
        echo -e "Você pode acessá-lo em: ${AMARELO}https://${DOMINIO_PORTAINER}${NC}"
        echo -e "Crie seu usuário administrador no primeiro acesso."
        return 0
      fi
    fi
    
    # Exibir progresso
    tentativas=$((tentativas + 1))
    echo -ne "${AZUL}[VERIFICANDO]${NC} Tentativa $tentativas de $MAX_TENTATIVAS... "
    
    if [ $tentativas -lt $MAX_TENTATIVAS ]; then
      echo -e "Aguardando ${INTERVALO} segundos."
      sleep $INTERVALO
    else
      echo -e ""
    fi
  done
  
  echo ""
  echo -e "${AMARELO}[AVISO]${NC} Tempo limite excedido para verificar se o Portainer está no ar."
  echo -e "O processo de instalação continuará. Verifique manualmente acessando: ${AMARELO}https://${DOMINIO_PORTAINER}${NC}"
  echo -e "Se o Portainer não estiver disponível, verifique os logs com: ${AMARELO}docker service logs portainer_portainer${NC}"
  echo ""
  return 1
}

docker volume create volume_swarm_shared
docker volume create volume_swarm_certificates
docker volume create portainer_data
sucesso "Volumes criados com sucesso"

# Configurar diretório de backup como padrão
mensagem "Configurando diretório de backup..."
mkdir -p /opt/docker-backups
chmod 700 /opt/docker-backups
sucesso "Diretório de backup configurado"

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

# Configuração simplificada do Traefik
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
      - "--accesslog.filepath=/var/log/traefik/access-log"
      - "--entryPoints.websecure.http.tls.options.default.minVersion=VersionTLS12"
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
        - "traefik.http.routers.http-catchall.priority=1"
    volumes:
      - "/var/run/docker.sock:/var/run/docker.sock:ro"
      - "volume_swarm_certificates:/etc/traefik/letsencrypt"
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

  volume_swarm_shared:
    external: true
    name: volume_swarm_shared
  volume_swarm_certificates:
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

# Verificar quando o Portainer estiver disponível
verificar_portainer_disponivel

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
VOLUMES=("volume_swarm_certificates" "portainer_data")

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

# Remover condicionais para exibir informações de monitoramento e backup
echo -e "${VERDE}=== BACKUP ===${NC}"
echo -e "${AMARELO}Diretório de backups:${NC} /opt/docker-backups"
echo -e "${AMARELO}Frequência:${NC} Diariamente às 2h da manhã"
echo -e ""
echo -e "${VERDE}=== VERIFICAÇÃO DE INTEGRIDADE ===${NC}"
echo -e "${AMARELO}Logs:${NC} /var/log/healthcheck-*.log"
echo -e "${AMARELO}Frequência:${NC} A cada 6 horas"
echo -e ""

echo -e "${VERDE}=== PRÓXIMOS PASSOS ===${NC}"
echo -e "1. Acesse o Portainer e defina sua senha de administrador"
echo -e "2. Comece a gerenciar seus contêineres através do Portainer"
echo -e ""
echo -e "${AMARELO}Obrigado por usar nosso instalador! Para suporte adicional, visite nosso repositório GitHub.${NC}" 