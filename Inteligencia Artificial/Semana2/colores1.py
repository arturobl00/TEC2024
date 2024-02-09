#Programa que detecta colores usando numpy
#Importar librerias
import cv2
import numpy as np

#Activar la camara
cap = cv2.VideoCapture(0)

#Ciclo para capturar en la camara
while True:
    #Dos variables se usa
    #rel es una bandera de activacion
    #frame es la captura de imagen
    rel, frame = cap.read()
    #Mostramos en venta el frame
    if rel == True:
        cv2.imshow('Online', frame)
    #Condicion de cierre
    if cv2.waitKey(1) & 0xFF == ord('a'):
        break

#Refrescamos la memoria
cap.release()
#Cerramos la aplicacion
cv2.destroyAllWindows()