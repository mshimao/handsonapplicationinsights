# Atividade 02

Criação do recurso do Application Insights.

## Criação da recurso do Application Insights

Documentação da Microsoft sobre a criação do recurso do Application Insights.
<https://docs.microsoft.com/pt-br/azure/azure-monitor/app/create-workspace-resource>

Logar no portal do Azure, no endereço <https://portal.azure.com/>.

Criar um Resource group chamado "HandsonApplicationInsights", para isso acessar clicar no menu superior na esquerda. Clicar na opção "Resource groups".

![createresourcegroup](../imagens/createresourcegroup.png)

Clicar na opção "Add".

![addresourcegroup](../imagens/addresourcegroup.png)

No campo Resource group digitar "HandsonApplicationInsights", e selecionar a região (US) East US, e clicar em "Review + create".

![configresourcegroup](../imagens/configresourcegroup.png)

Confirmar a criação do Resource group clicando em "Create"

![confirmresourcegroup](../imagens/confirmresourcegroup.png)

Vá até o resource group clicando na mensagem que irá aparecer após a criação do resource group.

![gotoresourcegroup](../imagens/gotoresourcegroup.png)

Com o resource group aberto, clicar em "Add".

![addappinsights](../imagens/addappinsights.png)

Digitar "Application Insights" no campo de pesquisa, e selecionar o item Application Insights.

![azuremarketplace](../imagens/azuremarketplace.png)

Clicar em "Create".

![createapplicationinsights](../imagens/createapplicationinsights.png)

Digitar "HandsonApplicationInsights" no campo Name, selecionar a região (US) East US no campo Region e selecionar o item "LogAnalyticsHandson" no campo Log Analytics Workspace.
A subscription terá o nome da subscription criada no quado foi realizada a criação da conta do Azure, o campo Resource Group deve ter o resource group "HandsonApplicationInsights" e a opção Resource Mode deve estar com a opção "Workspace-based" selecionada.
Clicar em "Review + create".

![configapplicationinsights](../imagens/configapplicationinsights.png)

Clicar em "Create" para criar a instância do Application Insights.

![confirmcreateappinsights](../imagens/confirmcreateappinsights.png)

Abra a instância criada do Application Insights.

![instanceappinsights](../imagens/instanceappinsights.png)

Próxima atividade: [Atividade 03](03-atividade.md)
