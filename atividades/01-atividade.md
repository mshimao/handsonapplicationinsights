# Atividade 01

Download da máquina virtual e configuração do IIS, instalação do SQL Server e instalação da aplicação.

## Configuração da VM

Para este hands-on utilizaremos uma VM para instalar a aplicação e o agente de monitoramento.

### Download da VM

No link abaixo estão disponíveis VMs em HyperV, VirtualBox e VMware.

https://developer.microsoft.com/pt-br/microsoft-edge/tools/vms/

Selecione a opção com o Windows 10, a plataforma de VM escolha o tipo que tiver mais familiaridade.

![Download VM](../imagens/downloadvm.png)

Se você não tem nenhum gerenciador de VM instalado na sua máquina, utilize o VirtualBox:

VirtualBox - Instalação do VirtualBox
https://www.youtube.com/watch?v=8mns5yqMfZk

VirtualBox - Como importar um vdi.
https://www.youtube.com/watch?v=fVYwt1Tluug

Após o download da VM e da sua configuração, inicie ela e logue no Windows.

### Chocolatey

Para facilitar a configuração da VM vamos utilizar o gerenciador de pacotes Chocolatey.

Para instalar o Chocolatey, será necessário executar powershell como administrador. No box de pesquisa do Windows, digitar powershell, e clicar com o botão direito do mouse no ícone do Powershell e clicar na opção Executar como administrador.

![Powershell](../imagens/powershelladm.png)

Acessar o link abaixo para ver as instruções de instalação do Chocolatey:

https://chocolatey.org/install

![Install chocolatey](../imagens/installchocolatey.png)

![Install chocolatey](../imagens/installchocolatey2.png)

### Instalação dos softwares

Após a instalação do Chocolatey, vamos utilizá-lo para instalar os outros softwares que utilizaremos neste hands-on. Para isso abra o Powershell como administrador.

#### Git

Para instalar o Git utilizando o Chocolatey, digite o comando abaixo no prompt do Powershell:

        choco install git

Responder a pergunta "Do you want to run the script?" com "A".

![Instalação do git](../imagens/installgit.png)

#### Visual Code

Para instalar o Visual Code utilizando o Chocolatey, digite o comando abaixo no prompt do Powershell:

        choco install vscode

Responder a pergunta "Do you want to run the script?" com "A".

![Instalação do VS Code](../imagens/installvisualcode.png)



Abrir o Visual Code como administrador.

Criar uma pasta com o nome de "Handson" no drive C.

Clonar o projeto do Github nesta pasta:

https://github.com/mshimao/handsonapplicationinsights.git


Configuração do IIS

Abrir um terminal, usando a opção Terminal -> New Terminal.

Na janela do teminal, ir para a pasta powershell:

        cd powershell

Executar o script installiis.ps1

        .\installiis.ps1

Se ocorrer o erro abaixo, feche o Visual Code, e reabra ele executando como administrador e reexecute o script.

Responder "N" para as perguntas "Do you want to restart the computer to complete this operation now?".

Após a instalação, reiniciar a VM.

Abrir o Visual Code como administrador na pasta C:\Handson\handsonapplicationinsights e abrir um terminal.

        choco install urlrewrite -y


Instalar o Chrome

        choco install googlechrome

Reponder a pergunta "Do you want to run the script?([Y]es/[A]ll" com "A".

Instalar o SQL Express 2014 

O comando abaixo instala o SQL Express 2014 e configura o usuário "sa" com a senha "sa!2014". Este pacote já inclui o SQL Server Management Studio.

        choco install mssqlexpress2014sp1wt -params '"/INSTANCEID:SQLEXPRESS /INSTANCENAME:SQLEXPRESS2014  /SECURITYMODE:SQL /SAPWD:sa!2014"'

Após a instalação, para verificar se a instalação do SQL está rodando, abra o SQL Server Management Studio e conecte no SQL Express.

Iniciar o serviço SQL Browser.

        .\startsqlbrowser.ps1

Importar a base de dados para o SQL Server.

        .\import-bacpac.ps1

Instalar o modulo de administracao do IIS 

        Install-Module –Name IISAdministration

Responder "Y" para a pergunta "Do you want PowerShellGet to install and import the NuGet provider now?"

Reponder "A" para a pergunta "If you trust this repository, change its InstallationPolicy value by running the Set-PSRepository cmdlet. Are you sure you want to nstall the modules from 'PSGallery'?"

Instalar a aplicação demo no IIS.

        .\installapp.ps1

Configurar as variáveis de ambiente para conexão com o banco de dados.

        .\setvariables.ps1

Configurar o web.config com os dados para conexão com o banco de dados.

        .\setwebconfig.ps1







