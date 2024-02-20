#Programa que detecta colores usando numpy
#Importar librerias
import cv2
import numpy as np

#Declarar arreglo de color con np ROjo natural
colorinicio = np.array([150,100,20], np.uint8)
#                       H  S  V
colorfinal = np.array([169,255,255], np.uint8)

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

        #Aplicar filtro de extraccion de color
        detectacolor = cv2.inRange(frameHSV,colorinicio,colorfinal)

        #Proceso para detectar contorno
        contornos,_ = cv2.findContours(detectacolor, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        #Proceso para dibujar contorno detectado con un ciclo
        detecta = 0
        for c in contornos:
            area = cv2.contourArea(c)
            if area > 3000:
                nuevoContorno = cv2.convexHull(c) #esta funcion elimina picos
                detecta = detecta + 1
            cv2.drawContours(frame, [c], -1, (0,0,255), 2)

        texto = "Hola Mundo!" 

        posicion = (50, 50)

        fuente = cv2.FONT_HERSHEY_SIMPLEX

        escala = 1

        color = (255, 0, 0)

        grosor = 2

        cv2.putText(frame, texto, posicion, fuente, escala, color, grosor)
        cv2.imshow('Video Detección',frame)
    
    #Condicion de cierre
    if cv2.waitKey(1) & 0xFF == ord('a'):
        break

#Refrescamos la memoria
cap.release()
#Cerramos la aplicacion
cv2.destroyAllWindows()