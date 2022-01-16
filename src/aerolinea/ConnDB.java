package aerolinea;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 * @author Ángel, Nicolás, Rocio
 */
public class ConnDB {

    private static ConnDB instanciaUnica;
    private Connection conn; // Connexión con la base de datos
    private ResultSet rs;    // Guardar los registros de una consulta
    // NOTA: El objeto Statement se utiliza para ejecutar comandos SQL
    
    /**
     * Constructor por defecto que se conecta a una base de datos especifica
     */
    private ConnDB() {
        try {
            conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/aerolinea",
                    "root",
                    "");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "!Base de datos incorrecta!", 
                    "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    /**
     * Si es null crea un objeto connDB
     * 
     * @return ConnDb 
     */
    public static ConnDB getInstance(){
        if (instanciaUnica==null){
            instanciaUnica=new ConnDB();
        }
        
        return instanciaUnica;
    }
    /**
     * Devuelve los registros guardados en el resultSet
     * 
     * @return ResultSet
     */
    public ResultSet getRs() {
        return rs;
    }

    /**
     * Se hace un select de la tabla vuelos y los registros que aparecen en esa
     * query se guardan en el resultSet
     */
    public void cargaDatosVuelos() {
        Statement stmt = null; 
        String query = "SELECT * FROM vuelos";
        
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Se hace un select de la tabla pasajeros y los registros que aparecen en
     * esa query se guardan en el resultSet
     */
    public void cargaDatosPasajeros() {
        Statement stmt = null; 
        String query = "SELECT * FROM pasajeros";
        
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Se hace un select de la tablas pasajeros, billetes y vuelos, después se
     * emparejan las claves primarias con sus claves foráneas, se le pasa el id
     * del vuelo y los registros que aparecen en esa query se guardan en el
     * resultSet
     * 
     * @param idVuelo Identificador del vuelo
     */
    public void cargaDatosPasajerosVuelos(int idVuelo) {
        Statement stmt = null; 
        String query = "SELECT * FROM pasajeros, billetes, vuelos "
                + "WHERE pasajeros.dni = billetes.dni_pasajero "
                + "AND billetes.id_vuelo = vuelos.id "
                + "AND vuelos.id = " + idVuelo;
        
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Resetea los vuelos que son fumadores a no fumadores
     */
    public void reseteaFumadores() {
        Statement stmt = null; 
        String query = "UPDATE vuelos SET fumadores = 0 WHERE fumadores = 1";
        
        try {
            stmt = conn.createStatement();
            stmt.executeUpdate(query);
            stmt.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Se comprueba si el avion que va a hacer el recorrido está disponible
     * 
     * @param id Identificador único del avión
     */
    public void comprobarAvionDisponible(int id){
        Statement stmt = null;
        String query = "SELECT disponible FROM aviones WHERE id = " + id;
        
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Se agrega un registro a la tabla vuelos
     * 
     * @param idAvion       Identificador del avión 
     * @param origen        Lugar de donde parte el avión
     * @param destino       Lugar a donde va el avión 
     * @param fechaSalida   Fecha en la que el avión parte del aeropuerto
     * @param fechaLlegada  Fecha en la que el avión llega a su destino
     * @param distancia     Distancia del recorrido que hay que hacer
     * @param fumadores     Avión es apto para fumadores, 0 no - 1 si fumador
     */
    public void insertarVuelo(int idAvion, String origen, String destino,
            String fechaSalida, String fechaLlegada, float distancia,
            int fumadores) {
        
        Statement stmt = null;
        String query = "INSERT INTO vuelos "
                     + "VALUES (null, " + idAvion + ", '" + origen + "', '"
                     + destino + "', '" + fechaSalida + "', '" + fechaLlegada
                     + "', " + distancia + ", " + fumadores + ", 1);";
        try {
            stmt = conn.createStatement();
            stmt.executeUpdate(query);
            stmt.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    /**
     * Borra el último registro de la tabla vuelos
     */
    public void borrarUltimoVuelo() {
        Statement stmt = null;
        String guardarUltimoVuelo = "SELECT id FROM vuelos "
                                  + "ORDER BY id DESC LIMIT 1";
        
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(guardarUltimoVuelo);
            rs.next();
            int id = Integer.parseInt(rs.getString("id"));
            String borrarUltimoVuelo = "DELETE FROM vuelos WHERE id = " + id;
            stmt.executeUpdate(borrarUltimoVuelo);
            stmt.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
