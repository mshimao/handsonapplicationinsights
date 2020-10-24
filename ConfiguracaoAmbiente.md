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

O comando abaixo instala o SQL Express 2014 e configura o usuário "sa" com a senha "sa!2014".

        choco install mssqlexpress2014sp1wt -params '"/INSTANCEID:SQLEXPRESS /INSTANCENAME:SQLEXPRESS2014  /SECURITYMODE=SQL /SAPWD:sa!2014"'

Instalar o SQL Server Management Studio

        choco install sql-server-management-studio

