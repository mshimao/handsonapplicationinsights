Para este hands-on utilizaremos uma VM para instalar a aplicação e o agente de monitoramento.

No link abaixo está disponível VMs em HyperV, VirtualBox e VMware, escolha o tipo que tiver mais familiaridade:
https://developer.microsoft.com/pt-br/microsoft-edge/tools/vms/

VirtualBox - Instalação do VirtualBox
https://www.youtube.com/watch?v=8mns5yqMfZk

VirtualBox - Como importar um vdi.
https://www.youtube.com/watch?v=fVYwt1Tluug


Instalar o Chocolatey seguindo as instruções do link abaixo:
https://chocolatey.org/install

Instalar o git utilizando o Chocolatey:

        choco install git

Responder a pergunta "Do you want to run the script?" com "A".

Instalar o Visual Code utilizando o Chocolatey:

        choco install vscode

Responder a pergunta "Do you want to run the script?" com "A".

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





