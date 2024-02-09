#Programa que detecta colores usando numpy
#Importar librerias
import cv2
import numpy as np

#Declarar arreglo de color con np
colorinicio = np.array([0,10,10], np.uint8)
#                       H  S  V
colorfinal = np.array([10,255,255], np.uint8)

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
        #Convertir mi imagen a formato HSV
        frameHSV = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)

        cv2.imshow('Online', frameHSV)
    #Condicion de cierre
    if cv2.waitKey(1) & 0xFF == ord('a'):
        break

#Refrescamos la memoria
cap.release()
#Cerramos la aplicacion
cv2.destroyAllWindows()