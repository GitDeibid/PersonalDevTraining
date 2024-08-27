import mysql.connector as mysql

def conexion():
    mydb = mysql.connect(
        host = 'localhost',
        user = 'root',
        password = '12345',
        database = 'diicc'
    )
    return mydb


def insertarAlumnoAsignatura(idAlum:int,idAsig:int):
    try:
        conn = conexion()
        c = conn.cursor()
        query = "insert into diicc.AsignaturaAlumno (%s,%s)"
        values = (idAsig,idAlum)

        c.execute(query,values)
        conn.commit()
    except:
        print("Error en registro...")
    return

def insertarAlumno(nombre:str, di:str):
    try:
        conn = conexion()
        c = conn.cursor()
        query = "insert into diicc.alumnos (NombreAlumno, DiAlumno) values (%s,%s)"
        values = (nombre,di)
        c.execute(query,values)
        alumno_id = c.lastrowid
        conn.commit()
        print("Datos ingresados correctamente...")
    except:
        print("Error de ingreso de datos...")

    return alumno_id

def insertarDocente(nombre:str, di:str):
    try:
        conn = conexion()
        c = conn.cursor()
        query = "insert into diicc.academicos (NombreAcademico, DiAcademico) values (%s,%s)"
        values = (nombre,di)
        c.execute(query,values)
        conn.commit()
        print("Datos ingresados correctamente...")
    except:
        print("Error de ingreso de datos...")
        
    return 0

def buscarAlumno(rutAlumno:str):
    try:
        conn = conexion()
        c = conn.cursor()
        sql = "SELECT * FROM diicc.alumnos where DiAlumno = %s"
        adr = (rutAlumno,)
        c.execute(sql,adr)
        res = c.fetchall()

    except:
        print("Error en buscar alumno...")

    return res

def editarAlumno(nombre:str,rut:str,id:int):
    try:
        conn = conexion()
        c = conn.cursor()
        sql = "UPDATE diicc.alumnos SET NombreAlumno=%s, DiAlumno=%s WHERE IdAlumno =%s"
        val = (nombre,rut,id)
        c.execute(sql,val)
        
        conn.commit()
    except:
        print("Error en editar alumno...")
    return 0

def borrarAlumno(rut:str):
    try:
        conn = conexion()
        c = conn.cursor()
        sql = "DELETE FROM diicc.alumnos WHERE IdAlumno =%s"
        c.execute(sql)
        conn.commit()
        
    except:
        print("Error al eliminar")        
    return 0