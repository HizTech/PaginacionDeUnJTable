package model;

import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

/**
* Clase Connect perteneciente al paquete model, contiene todos los metodos referentes a la conexion con la base de datos. 
* @author Arca7 Technologies.
* @version 1.1
*/
public class Connect {

    private final String DB="paises";
    private final String URL="jdbc:mysql://localhost:3306/"+DB+"?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private final String USER="root";
    private final String PASS="";    
 
    public DataSource dataSource=null;
    
    public Connect(){

        inicializaDataSource();

    }

    /**
     * Metodo en el cual inicializamos un objeto que nos va a permitir establecer las respectivas conexiones con la base de datos.
     */
    private void inicializaDataSource() {

        try{

            BasicDataSource basicDataSource = new BasicDataSource();

            basicDataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
            basicDataSource.setUsername(USER);
            basicDataSource.setPassword(PASS);
            basicDataSource.setUrl(URL);
            basicDataSource.setMaxTotal(50);

            dataSource = basicDataSource;
        
        }catch(Exception ex){
            System.out.println("error "+ex.getMessage());
        }

    }
        
}
