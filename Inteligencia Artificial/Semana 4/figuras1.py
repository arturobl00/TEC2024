import cv2;
import numpy as np;

#Funciones de dibujo en OpenCV
#Construir un linzo donde dibujar
                    #ejeY,  ejeX
imagen = 255 * np.ones((400,600,3), dtype=np.uint8)

#Nota los colores de las figuras se rellenan con -1
#Colores de linea del 1 al 5

#Dibujar lineas    
    #Posxini yini  posxfin yfin colores grosor
cv2.line(imagen,(0,200),(600,200),(255,0,0), 1)
cv2.line(imagen,(300,0),(300,400),(0,0,255),1)

#Dibujar Rectangulo
cv2.rectangle(imagen,(50,50),(250,150),(0,255,0),-1)

#Dibujar un circulo
cv2.circle(imagen,(450,100), 80, (0,0,255), 1)

#Dibujar una elipce
##              pos  x  y     diametro 
cv2.ellipse(imagen,(150,300),(80,80),0,270,90,400,-1)


#Dibujar Texto
#           lienzo texto    pos x y   fuente tamaño color grosor
cv2.putText(imagen,'OpenCV',(320,300), 5, 3,(0,255,0),1)

#Mostrar imagen
cv2.imshow("Dibujo", imagen)
cv2.waitKey()
cv2.destroyAllWindows()

