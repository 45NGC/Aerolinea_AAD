package aerolinea;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author angel
 */
public class ConnDB {

    private Connection conn;
    private ResultSet rs;

    /**
     * Constructor por defecto que se conecta a una base de datos especifica
     */
    public ConnDB() {
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aerolinea", "root", "");
            System.out.println("Conexion con la base de datos!");
        } catch (SQLException ex) {
            System.out.println("No hay conexion con la base de datos");
        }
    }

    public ResultSet getRs() {
        return rs;
    }

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

    public void cargaDatosPasajerosVuelos(int idVuelo) {
        Statement stmt = null;
        String query = "SELECT * FROM pasajeros, billetes, vuelos " +
                       "WHERE pasajeros.dni = billetes.dni_pasajero " +
                       "AND billetes.id_vuelo = vuelos.id " +
                       "AND vuelos.id = " + idVuelo;
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    public void reseteaFumadores(){
        Statement stmt=null;
        String query="UPDATE vuelos SET fumadores=0 WHERE fumadores=1";
        try{
            stmt=conn.createStatement();
            stmt.executeUpdate(query);
            stmt.close();
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
    }

}
