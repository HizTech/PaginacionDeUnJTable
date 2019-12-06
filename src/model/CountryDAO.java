package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
* Clase CuntryDAO perteneciente al paquete model, contiene todos los metodos para realizar las operaciones de consulta con la base de datos. 
* @author Arca7 Technologies.
* @version 1.1
*/
public class CountryDAO {

    /*Creamos los objetos requeridos para poder administrar las operaciones
    con la base de datos
    inicialmente creamos un objeto de tipo Connect(connection), este nos permitira crear una conexion con la base de datos 
    creamos un objeto de tipo PreparedStatement(pst), lo utilizaremos para preparar la sentencia sql y agregar los parametros requeridos
    creamos un objeto de tipo ResultSet(rs), lo utilizaremos para obtener los respectivos registros alojados en la base de datos 
    */   
    private final Connect connection;
    private PreparedStatement pst;
    private ResultSet rs;
    
    /**
     * Creamos el metodo constructor de la clase.
     */
    public CountryDAO() {
        this.connection = new Connect();
    }

    /**
     * Metodo para traer los datos almacenados en la base de datos.
     * @return devuelve un ArrayList de tipo Country.
     */
    public ArrayList<Country> selectCountry(){

        Connection connect = null;    
        ArrayList list = new ArrayList();
        Country country;
        
        try{
            

            connect = connection.dataSource.getConnection();
            
            if(connect != null){
                
                String sql = "SELECT * FROM paises WHERE 1";
                pst = connect.prepareStatement(sql);
                
                rs = pst.executeQuery();
                
                while(rs.next()){
                    country = new Country();
                
                    country.setId(rs.getInt("id"));
                    country.setCountry(rs.getString("pais"));
                    country.setCity(rs.getString("capital"));
                    country.setNumberInhabitants(rs.getInt("num_habitantes"));
                    
                    list.add(country);
                    
                }
                
            }else{}
            
        }catch(SQLException ex){
        
            System.out.println(ex.getMessage());
        
        }finally{
            try{
                if(connect!=null){
                    connect.close();
                }
            }catch(SQLException ex){
                System.out.println("method: selectCountry(), class: CountryDAO "+ex.getMessage());
            }
        }
        
        
        return list;
        
    }    
    
    
}
