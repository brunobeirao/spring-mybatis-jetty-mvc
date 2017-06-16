# spring-mybatis-jetty-mvc
Projeto MVC utilizando Spring com Mybatis e Jetty como servidor

### Informações
- Código fonte do projeto está em https://github.com/bsbeirao/spring-mybatis-jetty-mvc. 
- Todas as dependências gerenciadas a partir do Repositório Maven.
- Versão do Java utilizada 1.7.
- A organização do projeto foi feito seguindo os conceitos MVC Spring. O banco configurado foi o Mysql. Foi utilizado o Jetty como servidor pela fácil configuração. MyBatis que elimina praticamente todo o código JDBC e a configuração manual. Na primeira tela tem uma breve apresentação e o link para abrir a listagem de usuários. 

### Procedimento de criação de dados no banco:
- Deve-se criar um banco Mysql. O script de criação das tabelas e inserção de dados está na pasta raiz do projeto(SQL.sql).
- No arquivo /src/main/resources/jdbc.properties deve ser configurado o banco antes de subir a aplicação.

### Procedimento de importação e execução:
- Baixar o código do github com o comando no terminal: git clone https://github.com/bsbeirao/spring-mybatis-jetty-mvc.git
- Importar o projeto na IDE Eclipse: File/Import.../Existing Maven Projects. 
- Com o projeto importado, executar o Maven install.
- Clicar com o botão direito no projeto: Run as/Maven build...
- Em Goals digitar: clean install jetty:run
- Clicar em Run
- Acessar localhost:8080.
