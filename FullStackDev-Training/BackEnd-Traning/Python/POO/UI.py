import tkinter as tk
from tkinter import ttk
import Clases as cls


#alumno = cls.Persona('David','11.112.112-2')
#alumno.crear('alumnos')

def nueva_ventana():
    nw = tk.Toplevel()
    nw.title('Nueva ventana')
    nw.geometry('400x200')
    tk.Label(nw,text="Ingrese Rut")
    tk.Label(nw,text="Seleccione asignatura")
    tk.Entry(nw)
    n = tk.StringVar()
    asignaturas = ttk.Combobox(nw,width=27, textvariable=n)
    asignaturas['values'] = (1,2,3,4,5,6)
    
    nw.mainloop()

main_win = tk.Tk()
main_win.geometry('800x600')
main_win.title('Sistema Matriculas')

#Etiquetas de texto

#Alumno
al = tk.Label(main_win,text="Ingrese rut alumno: ")
ac = tk.Label(main_win,text="Ingrese rut academico: ")


#Cuadros de entrada
e_al = tk.Entry(main_win)
e_ac = tk.Entry(main_win)
#

#Botones
btn_asignatura = tk.Button(main_win,text='Registrar Asignatura',command=nueva_ventana)

#Ubicación de elementos en grilla

al.grid(row=0,column=0, sticky=tk.W,pady=2)
ac.grid(row=1,column=0, sticky=tk.W,pady=2)
e_al.grid(row=0,column=1,pady=2)
e_ac.grid(row=1,column=1,pady=2)
btn_asignatura.grid(row=2,column=0,pady=2)
tk.mainloop()