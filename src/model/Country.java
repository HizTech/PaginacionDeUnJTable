package model;

/**
* Clase Country perteneciente al paquete model, contiene todos los metodos get y set referentes a la clase, 
* la cual nos permitira administrar los registros que vamos a obtener de la base de datos. 
* @author Arca7 Technologies.
* @version 1.1
*/
public class Country {
    
    private int id;
    private String country;
    private String city;
    private int numberInhabitants;

    /**
     * Metodo constructor parametrizado, en el cual recibimos los datos a tratar.
     * @param id pasamos como argumento una variable de tipo entero haciendo referencia a nuestra clave primaria, de la tabla pais de nuestra base de datos
     * @param country pasamos como argumento una variable de tipo String la cual hace referncia al nombre del pais
     * @param city pasamos como argumento una variable de tipo String la cual hace referencia a la capital de dicho pais
     * @param numberInhabitants pasamos como argumento una variable de tipo int la cual hace referencia al numero de habitantes que tiene dicho pais.
     */
    public Country(int id, String country, String city, int numberInhabitants) {
        this.id = id;
        this.country = country;
        this.city = city;
        this.numberInhabitants = numberInhabitants;
    }

    /**
     * Método constructor Vacio.
     */
    public Country() {
    }

    /*METODOS GET Y SET*/
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getNumberInhabitants() {
        return numberInhabitants;
    }

    public void setNumberInhabitants(int numberInhabitants) {
        this.numberInhabitants = numberInhabitants;
    }
    
    
    
}


