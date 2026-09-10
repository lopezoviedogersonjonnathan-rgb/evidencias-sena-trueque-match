// ============================================================
//  EVIDENCIA GA6-220501096-AA1-EV04
//  Base de Datos NoSQL - MongoDB
//  Colección: parque
// ============================================================


// 1. CREAR / USAR LA BASE DE DATOS
db = db.getSiblingDB("parque_db");


// 2. CREAR LA COLECCIÓN "parque"
db.createCollection("parque")


// 3. INSERTAR 5 DOCUMENTOS
db.parque.insertMany([
  {
    "placa": "ABC-123",
    "marca": "Toyota",
    "modelo": "Corolla",
    "color": "Blanco",
    "propietario": {
      "nombre": "Carlos Andrés Pérez",
      "cedula": "1023456789",
      "telefono": "3101234567"
    },
    "fecha_ingreso": "2025-04-01",
    "hora_ingreso": "08:30",
    "tipo_vehiculo": "Automóvil"
  },
  {
    "placa": "XYZ-456",
    "marca": "Chevrolet",
    "modelo": "Spark",
    "color": "Rojo",
    "propietario": {
      "nombre": "Laura Milena Torres",
      "cedula": "1098765432",
      "telefono": "3209876543"
    },
    "fecha_ingreso": "2025-04-01",
    "hora_ingreso": "09:15",
    "tipo_vehiculo": "Automóvil"
  },
  {
    "placa": "MNO-789",
    "marca": "Yamaha",
    "modelo": "FZ25",
    "color": "Negro",
    "propietario": {
      "nombre": "Juan Esteban Gómez",
      "cedula": "1057894321",
      "telefono": "3153456789"
    },
    "fecha_ingreso": "2025-04-02",
    "hora_ingreso": "10:00",
    "tipo_vehiculo": "Motocicleta"
  },
  {
    "placa": "PQR-321",
    "marca": "Renault",
    "modelo": "Logan",
    "color": "Gris",
    "propietario": {
      "nombre": "Sofía Valentina Ruiz",
      "cedula": "1034567891",
      "telefono": "3187654321"
    },
    "fecha_ingreso": "2025-04-02",
    "hora_ingreso": "11:45",
    "tipo_vehiculo": "Automóvil"
  },
  {
    "placa": "DEF-654",
    "marca": "Mazda",
    "modelo": "CX-5",
    "color": "Azul",
    "propietario": {
      "nombre": "Miguel Antonio Vargas",
      "cedula": "1067891234",
      "telefono": "3162345678"
    },
    "fecha_ingreso": "2025-04-03",
    "hora_ingreso": "07:50",
    "tipo_vehiculo": "Campero"
  }
])


// 4. ACTUALIZAR EL PRIMER REGISTRO (placa ABC-123)
db.parque.updateOne(
  { "placa": "ABC-123" },
  {
    $set: {
      "color": "Negro",
      "hora_ingreso": "08:45",
      "propietario.telefono": "3115550001"
    }
  }
)


// 5. ACTUALIZAR EL ÚLTIMO REGISTRO (placa DEF-654)
db.parque.updateOne(
  { "placa": "DEF-654" },
  {
    $set: {
      "color": "Blanco perla",
      "hora_ingreso": "08:00",
      "propietario.telefono": "3165550005"
    }
  }
)


// 6. LISTAR LA COLECCIÓN COMPLETA (después de actualizaciones)
db.parque.find().pretty()


// 7. BORRAR EL TERCER DOCUMENTO (placa MNO-789)
db.parque.deleteOne({ "placa": "MNO-789" })


// 8. LISTAR LA COLECCIÓN COMPLETA (después del borrado)
db.parque.find().pretty()


// 9. BUSCAR UN DOCUMENTO POR NÚMERO DE PLACA
db.parque.findOne({ "placa": "XYZ-456" })

// Puedes cambiar "XYZ-456" por cualquier placa que quieras consultar
