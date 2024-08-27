import mysql.connector as ms
import tkinter as tk

class Persona:
    #Propiedades
    
    #Constructor
    def __init__(self, Nombre, DI):
        self.Nombre = Nombre
        self.DI = DI
    
    #Métodos
    @staticmethod
    def conectarDB():
        return ms.connect(
            host = 'localhost',
            user = 'root',
            password = '12345',
            database = 'diicc'
        )
    
    def crear(self,nombreTabla):
        
        conn = self.conectarDB()
        c = conn.cursor()

        query = "insert into "+nombreTabla+" (Nombre,Di) values (%s,%s)"
        values = (self.Nombre,self.DI)

        c.execute(query,values)
        conn.commit()

        return 0
    
class Asignatura:
    #Constructor
    def __init__(self, Nombre, notas=[]):
        self.Nombre = Nombre
        self.notas = notas

    #Metodo
    
    def getData(self):
        print(self.Nombre)
        print(self.notas)
    
    def Prom(self):        
        return sum(self.notas)


