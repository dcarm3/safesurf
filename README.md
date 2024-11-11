# safesurf

1. Análise e escolha dos paradigmas de programação

Dada a natureza do aplicativo SafeSurf e os requisitos de monitoramento de atividades suspeitas usando aprendizado de máquina, os seguintes paradigmas de programação foram considerados:
Paradigma Imperativo: O Flutter usa um estilo de programação orientado a widgets, que combina bem com o paradigma imperativo, no qual se especifica como o estado do aplicativo deve mudar ao longo do tempo. Esse estilo é intuitivo e permite um controle direto sobre o fluxo do aplicativo, especialmente em interações de UI (User Interface).
Paradigma Orientado a Objetos (OO): A arquitetura do Flutter facilita o uso da programação orientada a objetos, especialmente para definir classes e widgets reutilizáveis. No caso do SafeSurf, a estruturação orientada a objetos é essencial para criar componentes modulares, como o ActivityProvider, que mantém o estado e as funcionalidades de monitoramento de atividades.
Paradigma Funcional: Embora Flutter suporte alguns conceitos funcionais, como o uso de map, filter, reduce, entre outros, ele é usado principalmente para operações de coleção de dados. No SafeSurf, esse paradigma é menos necessário, mas algumas práticas funcionais, como a imutabilidade e as funções puras, podem ajudar na legibilidade e no teste de pequenos componentes.
Escolha Final: Para o SafeSurf, os paradigmas mais adequados são o Imperativo e a Programação Orientada a Objetos. O imperativo facilita a manipulação direta do estado e as interações de IU, enquanto o OO ajuda na modularidade e reutilização de código. Assim, esses paradigmas garantirão um desenvolvimento eficiente e uma base robusta para o código, facilitando a manutenção e testes.
2. Plano de Gerenciamento de Configuração

Este plano detalhado de Gerenciamento de Configuração garante que o desenvolvimento e a manutenção do aplicativo SafeSurf sejam realizados de forma organizada e controlada.
a. Políticas de Versionamento
Estratégia de versionamento: Será adotado o versionamento semântico (SemVer), que utiliza o formato MAJOR.MINOR.PATCH:
MAJOR: Alterações significativas e incompatíveis com versões anteriores.
MINOR: Funcionalidades adicionadas de forma retrocompatível.
PATCH: Correções de bugs e melhorias de manutenção sem adicionar novas funcionalidades.
Controle de branches:
Main Branch: Contém o código em produção e estável.
Development Branch: Local para o desenvolvimento ativo e onde os recursos são integrados e testados antes de passar para a main.
Feature Branches: Cada novo recurso ou funcionalidade será desenvolvido em uma branch específica que se baseia na development (exemplo: feature/add-activity-detection).
Bugfix Branches: Correções de bugs serão realizadas em branches dedicadas (exemplo: bugfix/fix-status-update).
Release Branches: Quando o código estiver pronto para uma versão, uma branch de release será criada a partir da development, permitindo ajustes e correções finais antes de integrar na main.
b. Controle de Mudanças
Solicitações de Alterações:
Todas as mudanças deverão ser solicitadas e documentadas através de issues no GitHub, permitindo que cada alteração tenha um histórico e seja revisada.
Pull Requests:
O código desenvolvido em branches de feature ou bugfix será revisado via pull requests antes de ser integrado à branch de development ou main.
A revisão de pull requests será obrigatória para garantir a qualidade e evitar regressões no código.
c. Identificação de Itens de Configuração
Itens de configuração do projeto SafeSurf serão identificados e organizados como:
Código-Fonte: Todos os arquivos .dart com a lógica do app.
Configurações do Projeto:
pubspec.yaml: Define dependências e metadados do projeto.
analysis_options.yaml: Configurações de lint para manter o código consistente.
Documentação:
Documentação do Código: Comentários e explicações de métodos críticos no código.
Documentação de Usuário e Desenvolvedor: Arquivo README.md no GitHub, com instruções de instalação, execução e contribuições.
Manutenção do Software: Detalhamento de manutenção em diferentes categorias (corretiva, adaptativa, perfectiva e preditiva).
Testes:
Arquivos de testes unitários e de widget, organizados na pasta test/.
Logs e Relatórios de Erros:
Arquivo CHANGELOG.md para documentar cada versão com as mudanças realizadas, facilitando o rastreamento de alterações entre versões.
3. Documentação de Manutenções

Manutenção Corretiva
A manutenção corretiva engloba todas as correções de defeitos ou erros identificados no software durante o desenvolvimento e uso. Esses erros afetam o funcionamento correto do aplicativo, e a correção é necessária para garantir a funcionalidade esperada.
Correção de Exibição de Mensagem Inicial
Descrição: O aplicativo exibe uma mensagem incorreta ao iniciar o monitoramento das atividades, o que causava falhas no teste unitário.
Solução: Ajustado o texto inicial da mensagem para corresponder ao comportamento esperado: "Monitorando atividades...".
Status: Resolvido.
Data da correção: 25/10.
Correção de Exclusão de Atividades
Descrição: A funcionalidade de exclusão de atividades não estava funcionando corretamente, pois o ícone de lixeira não aparecia na tela de edição.
Solução: Ajustada a visibilidade do ícone de lixeira na tela de edição e correção de lógica na função de exclusão.
Status: Resolvido.
Data da Correção: 05/11.

Manutenção Adaptativa
A manutenção adaptativa inclui modificações realizadas para manter o aplicativo compatível com novos ambientes ou requisitos tecnológicos.
Compatibilidade com Web
Descrição: Ajustes necessários para tornar o SafeSurf funcional na web, conforme requisito do projeto.
Solução: Adicionado suporte ao navegador através de ajustes de layout e configuração, testando a compatibilidade com navegadores principais.
Status: Concluído.
Data da Modificação: 01/11.
Integração Simulada de Backend para Testes
Descrição: Como o SafeSurf foi desenvolvido para detectar atividades em tempo real, simulou-se um backend para fornecer dados de atividades.
Solução: Implementado um backend simulado com dados mock para suportar testes e validar o comportamento de monitoramento do aplicativo sem a dependência de um servidor real.
Status: Concluído.
Data da Modificação: 05/11.

Manutenção Perfectiva
A manutenção perfectiva envolve melhorias que aumentam o desempenho ou a usabilidade do software sem alterar suas funcionalidades principais.
Aprimoramento da Interface com Barra de Navegação
Descrição: Uma barra de navegação superior foi adicionada para melhorar a experiência do usuário e tornar a navegação mais intuitiva.
Solução: Implementada uma barra de navegação horizontal com título e organização aprimorada para facilitar o uso.
Status: Concluído.
Data da Modificação:05/11.
Organização do Código e Remoção de Código Obsoleto
Descrição: Organizadas classes e arquivos, removendo código desnecessário e melhorando a estrutura para maior legibilidade.
Solução: Refatoração e limpeza de código, além de otimizações para melhorar a manutenção futura.
Status: Concluído.
Data da Modificação: 04/11.

Manutenção Preditiva
A manutenção preditiva inclui ações voltadas para evitar falhas futuras e tornar o sistema mais sustentável e adaptável a novas demandas.
Implementação de Testes Unitários e de Widget
Descrição: Foram implementados testes unitários e de widget para garantir que o aplicativo seja confiável e que suas principais funcionalidades funcionem corretamente. Estes testes detectam falhas antes que cheguem ao usuário final.
Solução: Criados testes básicos para o monitoramento de atividades e simulação de atividades seguras e suspeitas.
Status: Concluído.
Data da Implementação:05/11.
Documentação de Boas Práticas de Uso e Desenvolvimento
Descrição: Para facilitar a manutenção futura, foi criada uma seção no README com práticas recomendadas para o uso e desenvolvimento do SafeSurf, incluindo sugestões de padrões para novas funcionalidades.
Solução: Adicionada documentação no repositório GitHub, abordando práticas de versionamento, estrutura de código e nomenclaturas recomendadas.
Status: Concluído.
Data da Implementação: 06/11.
Monitoramento de Erros com Log Simplificado
Descrição: Para melhorar a depuração e análise de desempenho, foi adicionado um log básico para registrar atividades suspeitas detectadas.
Solução: Adicionada função de logging para registrar tipos de atividades e possíveis erros ou falhas, com fácil acesso ao histórico de logs.
Status: Concluído.
Data da Implementação: 10/11.

