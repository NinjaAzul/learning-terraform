# Projeto IaC com Terraform

Este repositório contém a infraestrutura como código (IaC) definida com Terraform para gerenciar e provisionar recursos em ambientes AWS.

## Estrutura do Projeto

- **main.tf**: Configuração principal dos recursos.
- **variables.tf**: Declaração de variáveis utilizadas no projeto.
- **outputs.tf**: Configuração para exibir informações importantes dos recursos provisionados.
- **datasources.tf**: Definição de datasources para consultar informações sobre recursos AWS já existentes.
- **modules/**: Pasta que armazena módulos reutilizáveis para padronizar e organizar a criação de recursos.
- **terraform.tfstate**: Arquivo que armazena o estado da infraestrutura (armazenado remotamente no backend S3).
- **.gitignore**: Configuração para ignorar arquivos sensíveis e desnecessários.

---

## Datasources

Datasources permitem consultar e usar informações sobre recursos existentes em sua infraestrutura, sem criar ou modificar esses recursos.

### Exemplos de Datasources

```hcl
data "aws_vpc" "default" {
  default = true
}
```

### Comandos uteis terraform

# Comandos Úteis do Terraform

### 1. **`terraform init`**

```hcl
# Inicializa o diretório de trabalho do Terraform.
# Baixa os provedores necessários e configura o backend para armazenar o estado.
terraform init
```

### 2. **`terraform validate`**

```hcl
# Valida a configuração do Terraform, verificando se a sintaxe está correta e se não há erros lógicos.
terraform validate

```

### 3. **`terraform plan`**

```hcl
# Gera um plano de execução, mostrando o que será criado, modificado ou destruído.
# Não faz alterações reais na infraestrutura, apenas exibe um preview.
terraform plan

```

### 4. **`terraform apply`**

```hcl
# Aplica as mudanças propostas pelo comando terraform plan.
# Cria ou modifica os recursos conforme a configuração do Terraform.
terraform apply

```

### 5. **`terraform destroy`**

```hcl
# Destrói todos os recursos provisionados pelo Terraform.
# Remove a infraestrutura provisionada.
terraform destroy

```

### 6. **`terraform refresh`**

```hcl
# Atualiza o estado do Terraform com as informações mais recentes dos recursos na infraestrutura.
terraform refresh

```

### 7. **`terraform output`**

```hcl
# Exibe os valores de saída definidos no bloco output da configuração.
# Útil para capturar informações como IDs de recursos, IPs, etc.
terraform output

```

### 8. **`terraform state list`**

```hcl
# Exibe todos os recursos atualmente gerenciados pelo Terraform.
# Lista todos os recursos do estado local.
terraform state list

```

### 9. **`terraform state rm <recurso>`**

```hcl
# Remove um recurso do estado local sem destruí-lo na infraestrutura.
# Útil quando um recurso foi removido manualmente e precisa ser removido do estado.
terraform state rm <recurso>

```

### 10. **`terraform get`**

```hcl
# Baixa e atualiza os módulos definidos no código.
# Garante que os módulos necessários estejam disponíveis e atualizados.
terraform get

```

### 11. **`terraform fmt -recursive`**

```hcl
# Formata automaticamente todos os arquivos .tf no diretório para seguir as convenções de formatação do Terraform.
# Garante que o código tenha uma estrutura consistente.
terraform fmt -recursive

```

### 12. **`terraform show`**

```hcl
# Exibe o estado atual dos recursos gerenciados pelo Terraform.
# Mostra detalhes sobre a configuração e os atributos dos recursos.
terraform show

```

### 13. **`terraform version`**

```hcl
# Exibe a versão do Terraform instalada no sistema.
# Útil para verificar se a versão correta está sendo usada.
terraform version

```

### 14. **`terraform graph | dot -Tsvg > graph.svg`**

```hcl
# Gera um gráfico visual das dependências entre os recursos do Terraform.
# Pode ser útil para visualizar como os recursos estão conectados.
terraform graph | dot -Tsvg > graph.svg

```
