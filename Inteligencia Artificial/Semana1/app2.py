#importamos Libreria
import cv2
import time
#usamos VideoCapture como parametro el nom del archvio
cap = cv2.VideoCapture('video.mp4')
delay = 1/24
#creamos un ciclo para leer los frames
while True:
    #Recuperamos datos para ret y frame
    ret, frame = cap.read()
    #Creamos una ventana para reproducir frame
    cv2.imshow("Video", frame)
    # Esperar a que se presione una tecla
    key = cv2.waitKey(1)
    # Si se presiona la tecla `q`, salir del bucle
    if key == ord("q"):
        break
    time.sleep(delay)
# Liberar el video
cap.release()
# Destruir todas las ventanas abiertas
cv2.destroyAllWindows()