# spring-mybatis-jetty-mvc
MVC project using Spring with Mybatis and Jetty as server

### Information
- Project source code is at https://github.com/bsbeirao/spring-mybatis-jetty-mvc.
- All dependencies managed from the Maven Repository.
- Version of Java used 1.7.
- The organization of the project was done following the concepts MVC Spring. The configured bank was Mysql. Jetty was used as a server for easy configuration. MyBatis that virtually eliminates all JDBC code and manual configuration. On the first screen you have a brief presentation and the link to open the user list.

### Procedure for creating data in the database:
- You should create a Mysql bank. The table creation and insertion data script is in the project root folder (SQL.sql).
- The /src/main/resources/jdbc.properties file must be configured before uploading the application.

### Import and Execution Procedure:
- Download the github code with the command in the terminal: git clone https://github.com/bsbeirao/spring-mybatis-jetty-mvc.git
- Import the project into the Eclipse IDE: File / Import ... / Existing Maven Projects.
- With the project imported, run Maven install.
- Right click on the project: Run as / Maven build ...
- In Goals type: clean install jetty: run
- Click Run
- Access localhost: 8080.


### Improvements

- Adjust the visual part, apply CSS, and some usability improvements.
- Apply Logs.
- Create unit tests.
- Improve SQL queries.
- Improve exception treatments.
