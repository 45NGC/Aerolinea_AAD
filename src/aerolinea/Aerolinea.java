package aerolinea;

import java.sql.ResultSet;
import java.sql.SQLException;
import com.github.lgooddatepicker.components.DateTimePicker;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author angel
 */
public class Aerolinea extends javax.swing.JFrame {

    private ConnDB connDB;

    /**
     * Creates new form Aerolinea
     */
    public Aerolinea() {
        initComponents();
        connDB = new ConnDB();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        contenedor = new javax.swing.JTabbedPane();
        infoGeneral = new javax.swing.JPanel();
        actualizarTablaVuelos = new javax.swing.JButton();
        jScrollPane3 = new javax.swing.JScrollPane();
        tablaVuelos = new javax.swing.JTable();
        infoPasajeros = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tablaPasajeros = new javax.swing.JTable();
        actualizarTablaPasajeros = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        tablaPasajerosVuelos = new javax.swing.JTable();
        mostrarPasajeros = new javax.swing.JButton();
        idVuelo = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        distanciaVueloT = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        insertarVuelo = new javax.swing.JButton();
        fechaSalida = new com.github.lgooddatepicker.components.DateTimePicker();
        fechaLlegada = new com.github.lgooddatepicker.components.DateTimePicker();
        cmbFumadores = new javax.swing.JComboBox<>();
        cmbOrigen = new javax.swing.JComboBox<>();
        cmbDestino = new javax.swing.JComboBox<>();
        idAvionT = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        jPanel5 = new javax.swing.JPanel();
        jPanel6 = new javax.swing.JPanel();
        nofumador = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        contenedor.setName(""); // NOI18N

        actualizarTablaVuelos.setText("Actualizar tabla");
        actualizarTablaVuelos.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        actualizarTablaVuelos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actualizarTablaVuelosActionPerformed(evt);
            }
        });

        tablaVuelos.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Id vuelo", "Id avion", "Origen", "Destino", "Fecha salida", "Fecha llegada", "Distancia", "Fumadores", "Activo"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane3.setViewportView(tablaVuelos);
        if (tablaVuelos.getColumnModel().getColumnCount() > 0) {
            tablaVuelos.getColumnModel().getColumn(0).setResizable(false);
            tablaVuelos.getColumnModel().getColumn(0).setPreferredWidth(45);
            tablaVuelos.getColumnModel().getColumn(1).setResizable(false);
            tablaVuelos.getColumnModel().getColumn(1).setPreferredWidth(45);
            tablaVuelos.getColumnModel().getColumn(2).setResizable(false);
            tablaVuelos.getColumnModel().getColumn(2).setPreferredWidth(90);
            tablaVuelos.getColumnModel().getColumn(4).setResizable(false);
            tablaVuelos.getColumnModel().getColumn(4).setPreferredWidth(110);
            tablaVuelos.getColumnModel().getColumn(5).setResizable(false);
            tablaVuelos.getColumnModel().getColumn(5).setPreferredWidth(110);
            tablaVuelos.getColumnModel().getColumn(6).setResizable(false);
            tablaVuelos.getColumnModel().getColumn(6).setPreferredWidth(60);
            tablaVuelos.getColumnModel().getColumn(7).setResizable(false);
            tablaVuelos.getColumnModel().getColumn(7).setPreferredWidth(45);
            tablaVuelos.getColumnModel().getColumn(8).setResizable(false);
            tablaVuelos.getColumnModel().getColumn(8).setPreferredWidth(45);
        }

        javax.swing.GroupLayout infoGeneralLayout = new javax.swing.GroupLayout(infoGeneral);
        infoGeneral.setLayout(infoGeneralLayout);
        infoGeneralLayout.setHorizontalGroup(
            infoGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, infoGeneralLayout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(actualizarTablaVuelos, javax.swing.GroupLayout.PREFERRED_SIZE, 146, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(318, 318, 318))
            .addComponent(jScrollPane3, javax.swing.GroupLayout.DEFAULT_SIZE, 795, Short.MAX_VALUE)
        );
        infoGeneralLayout.setVerticalGroup(
            infoGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, infoGeneralLayout.createSequentialGroup()
                .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 542, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 127, Short.MAX_VALUE)
                .addComponent(actualizarTablaVuelos, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        contenedor.addTab("infoVuelos", infoGeneral);

        tablaPasajeros.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Dni", "Nombre", "Apellido", "Tlfn", "Tlfn Opcional", "Email"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(tablaPasajeros);
        if (tablaPasajeros.getColumnModel().getColumnCount() > 0) {
            tablaPasajeros.getColumnModel().getColumn(0).setPreferredWidth(30);
            tablaPasajeros.getColumnModel().getColumn(3).setPreferredWidth(30);
            tablaPasajeros.getColumnModel().getColumn(4).setPreferredWidth(30);
            tablaPasajeros.getColumnModel().getColumn(5).setPreferredWidth(250);
        }

        actualizarTablaPasajeros.setText("Actualizar tabla");
        actualizarTablaPasajeros.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        actualizarTablaPasajeros.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actualizarTablaPasajerosActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout infoPasajerosLayout = new javax.swing.GroupLayout(infoPasajeros);
        infoPasajeros.setLayout(infoPasajerosLayout);
        infoPasajerosLayout.setHorizontalGroup(
            infoPasajerosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 795, Short.MAX_VALUE)
            .addGroup(infoPasajerosLayout.createSequentialGroup()
                .addGap(318, 318, 318)
                .addComponent(actualizarTablaPasajeros, javax.swing.GroupLayout.PREFERRED_SIZE, 146, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        infoPasajerosLayout.setVerticalGroup(
            infoPasajerosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(infoPasajerosLayout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 542, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(actualizarTablaPasajeros, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        contenedor.addTab("infoPasajeros", infoPasajeros);

        tablaPasajerosVuelos.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Dni", "Nombre", "Apellido", "Telefono", "Telefono opcional", "Email"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane2.setViewportView(tablaPasajerosVuelos);

        mostrarPasajeros.setText("Mostrar pasajeros");
        mostrarPasajeros.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        mostrarPasajeros.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mostrarPasajerosActionPerformed(evt);
            }
        });

        idVuelo.setHorizontalAlignment(javax.swing.JTextField.LEFT);
        idVuelo.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        jLabel1.setText("Id de vuelo:");
        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 795, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addGap(107, 107, 107)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 107, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(idVuelo, javax.swing.GroupLayout.PREFERRED_SIZE, 137, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(56, 56, 56)
                .addComponent(mostrarPasajeros, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 530, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(idVuelo, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(mostrarPasajeros, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        contenedor.addTab("infoPasajerosVuelo", jPanel3);

        jLabel3.setText("Origen");
        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        jLabel4.setText("Destino");
        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        jLabel5.setText("Fecha llegada");
        jLabel5.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        jLabel6.setText("Fecha Salida");
        jLabel6.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        distanciaVueloT.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        jLabel7.setText("Distancia");
        jLabel7.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        jLabel8.setText("Fumadores");
        jLabel8.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        insertarVuelo.setText("Insertar vuelo");
        insertarVuelo.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        insertarVuelo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                insertarVueloActionPerformed(evt);
            }
        });

        fechaSalida.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        fechaLlegada.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        cmbFumadores.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "No", "Si" }));
        cmbFumadores.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        cmbOrigen.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Madrid", "Alemania", "Suiza", "Austria", "Polonia", "Berlin", "Oviedo", "Santiago de Chile", "Cancún", " " }));

        cmbDestino.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Madrid", "Alemania", "Suiza", "Austria", "Polonia", "Berlin", "Oviedo", "Santiago de Chile", "Cancún", " " }));

        idAvionT.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        jLabel9.setText("Id avión");
        jLabel9.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel4Layout.createSequentialGroup()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addGap(74, 74, 74)
                        .addComponent(fechaSalida, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(fechaLlegada, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addContainerGap(45, Short.MAX_VALUE)
                        .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(idAvionT, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(49, 49, 49)
                        .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(distanciaVueloT, javax.swing.GroupLayout.PREFERRED_SIZE, 139, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(30, 30, 30)
                        .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(cmbFumadores, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel4Layout.createSequentialGroup()
                        .addGap(42, 42, 42)
                        .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel4Layout.createSequentialGroup()
                                .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(292, 292, 292)
                                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 115, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(cmbOrigen, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(cmbDestino, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                .addGap(68, 68, 68))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel4Layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(insertarVuelo, javax.swing.GroupLayout.PREFERRED_SIZE, 176, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(310, 310, 310))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addGap(87, 87, 87)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(idAvionT, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cmbFumadores, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(distanciaVueloT, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(71, 71, 71)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmbOrigen, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(72, 72, 72)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmbDestino, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(62, 62, 62)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(fechaSalida, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(fechaLlegada, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(84, 84, 84)
                .addComponent(insertarVuelo, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(99, Short.MAX_VALUE))
        );

        contenedor.addTab("insertarVuelo", jPanel4);

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 795, Short.MAX_VALUE)
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 722, Short.MAX_VALUE)
        );

        contenedor.addTab("borrarVueloAnterior", jPanel5);

        nofumador.setText("Resetear fumadores");
        nofumador.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nofumadorActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel6Layout = new javax.swing.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addGap(308, 308, 308)
                .addComponent(nofumador)
                .addContainerGap(356, Short.MAX_VALUE))
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addGap(226, 226, 226)
                .addComponent(nofumador, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(452, Short.MAX_VALUE))
        );

        contenedor.addTab("vuelosFumadores", jPanel6);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(contenedor)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(contenedor)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void actualizarTablaPasajerosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actualizarTablaPasajerosActionPerformed
        mostrarDatosEnTablaPasajeros();
    }//GEN-LAST:event_actualizarTablaPasajerosActionPerformed

    private void mostrarPasajerosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mostrarPasajerosActionPerformed
        mostrarDatosEnTablaPasajerosVuelos();
    }//GEN-LAST:event_mostrarPasajerosActionPerformed

    private void actualizarTablaVuelosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actualizarTablaVuelosActionPerformed
        mostrarDatosEnTablaVuelos();
    }//GEN-LAST:event_actualizarTablaVuelosActionPerformed

    private void insertarVueloActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_insertarVueloActionPerformed
        insertarDatosVuelo();

    }//GEN-LAST:event_insertarVueloActionPerformed

    private void nofumadorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nofumadorActionPerformed
        connDB.reseteaFumadores();
    }//GEN-LAST:event_nofumadorActionPerformed

    // todo faltan comprobar las fechas y refactorizar el metodo
    private void insertarDatosVuelo() {
        // Este metedo introduce los datos introducidos por el usuario en variables
        try {
            int idAvion = Integer.valueOf(idAvionT.getText());
            String origen = cmbOrigen.getSelectedItem().toString();
            String destino = cmbDestino.getSelectedItem().toString();
            String fechaSalida = formatearFecha(this.fechaSalida);
            String fechaLlegada = formatearFecha(this.fechaLlegada);
            float distanciaVuelo = Float.valueOf(distanciaVueloT.getText());
            int fumadores = (cmbFumadores.getSelectedIndex() == 0) ? 0 : 1;

            // Controlamos que el usuario no meta un origen y destino iguales
            boolean errorOrigenDestino = origen.equals(destino) ? true : false;
            connDB.comprobarAvionDisponible(idAvion);
            ResultSet rs = connDB.getRs();
            rs.next();
            int disponible = Integer.valueOf(rs.getString("disponible"));

            if (errorOrigenDestino) {
                mostrarMensajeAviso("¡ HAS INTRODUCIDO MAL LOS DATOS !");
            } else {
                if (disponible == 0) {
                    mostrarMensajeAviso("¡ ESE AVION NO ESTA DISPONIBLE !");
                } else {
                    idAvionT.setText("");
                    distanciaVueloT.setText("");
                    cmbFumadores.setSelectedIndex(0);
                    cmbOrigen.setSelectedIndex(0);
                    cmbDestino.setSelectedIndex(0);
                    mostrarMensajeAviso("¡ VUELO AGREGADO CON EXITO !");
                    connDB.insertarVuelo(idAvion, origen, destino, fechaSalida, fechaLlegada, distanciaVuelo, fumadores);
                }
            }
        } catch (NumberFormatException nfe) {
            mostrarMensajeAviso("¡ HAS INTRODUCIDO MAL LOS DATOS !");
        } catch (SQLException ex) {
            mostrarMensajeAviso("¡ ESE AVIÓN NO EXISTE !");
        }
    }

    private void mostrarMensajeAviso(String mensaje) {
        JOptionPane.showMessageDialog(null, mensaje);
    }

    private String formatearFecha(DateTimePicker dateTimePicker) {
        // Este metodo pasa los datos de DatePicker y TimePicker a String
        // Obtener fecha y hora LLEGADA
        String fecha = dateTimePicker.getDatePicker().toString();
        String hora = dateTimePicker.getTimePicker().toString() + ":00";

        return fecha + " " + hora;
    }

    private void mostrarDatosEnTablaVuelos() {
        try {
            connDB.cargaDatosVuelos();
            ResultSet rs = connDB.getRs();

            DefaultTableModel model = (DefaultTableModel) tablaVuelos.getModel();

            // Borro la tabla porque si no se repiten los datos cada vez que
            // presiono el botón
            model.setRowCount(0);

            // Meto los datos de la base de datos en la tabla
            while (rs.next()) {
                String id = rs.getString("id");
                String id_avion = rs.getString("id_avion");
                String origen = rs.getString("origen");
                String destino = rs.getString("destino");
                String fecha_salida = rs.getString("fecha_salida");
                String fecha_llegada = rs.getString("fecha_llegada");
                String distancia = rs.getString("distancia");
                String fumadores = rs.getString("fumadores");
                String activo = rs.getString("activo");
                String[] data = {id, id_avion, origen, destino, fecha_salida, fecha_llegada, distancia, fumadores, activo};
                model.addRow(data);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    private void mostrarDatosEnTablaPasajeros() {
        try {
            connDB.cargaDatosPasajeros();
            ResultSet rs = connDB.getRs();

            DefaultTableModel model = (DefaultTableModel) tablaPasajeros.getModel();

            // Borro la tabla porque si no se repiten los datos cada vez que
            // presiono el botón
            model.setRowCount(0);

            // Meto los datos de la base de datos en la tabla
            while (rs.next()) {
                String dni = rs.getString("dni");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String tlfn = rs.getString("telefono");
                String tlfnOpcional = rs.getString("telefono_opcional");
                String email = rs.getString("email");
                String[] data = {dni, nombre, apellido, tlfn, tlfnOpcional, email};
                model.addRow(data);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    private void mostrarDatosEnTablaPasajerosVuelos() {
        try {
            int numeroVuelo = Integer.parseInt(idVuelo.getText().trim());

            connDB.cargaDatosPasajerosVuelos(numeroVuelo);
            ResultSet rs = connDB.getRs();

            DefaultTableModel model = (DefaultTableModel) tablaPasajerosVuelos.getModel();

            // Borro la tabla porque si no se repiten los datos cada vez que
            // presiono el botón
            model.setRowCount(0);

            // Meto los datos de la base de datos en la tabla
            while (rs.next()) {
                String dni = rs.getString("dni");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String tlfn = rs.getString("telefono");
                String tlfnOpcional = rs.getString("telefono_opcional");
                String email = rs.getString("email");
                String[] data = {dni, nombre, apellido, tlfn, tlfnOpcional, email};
                model.addRow(data);
            }

            idVuelo.setText("");
        } catch (NumberFormatException nfe) {
            JOptionPane.showMessageDialog(
                    null,
                    "¡ HAS INTRODUCIDO MAL LOS DATOS !");
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Aerolinea.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Aerolinea.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Aerolinea.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Aerolinea.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Aerolinea().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton actualizarTablaPasajeros;
    private javax.swing.JButton actualizarTablaVuelos;
    private javax.swing.JComboBox<String> cmbDestino;
    private javax.swing.JComboBox<String> cmbFumadores;
    private javax.swing.JComboBox<String> cmbOrigen;
    private javax.swing.JTabbedPane contenedor;
    private javax.swing.JTextField distanciaVueloT;
    private com.github.lgooddatepicker.components.DateTimePicker fechaLlegada;
    private com.github.lgooddatepicker.components.DateTimePicker fechaSalida;
    private javax.swing.JTextField idAvionT;
    private javax.swing.JTextField idVuelo;
    private javax.swing.JPanel infoGeneral;
    private javax.swing.JPanel infoPasajeros;
    private javax.swing.JButton insertarVuelo;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JButton mostrarPasajeros;
    private javax.swing.JButton nofumador;
    private javax.swing.JTable tablaPasajeros;
    private javax.swing.JTable tablaPasajerosVuelos;
    private javax.swing.JTable tablaVuelos;
    // End of variables declaration//GEN-END:variables
}
