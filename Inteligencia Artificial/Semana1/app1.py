#Importamos la libreria de opencv
import cv2

#Declaramos una variable y le asignamos la webcam
cap = cv2.VideoCapture(0)

#Cuestionamos si la webcam esta disponible
if not cap.isOpened():
  print("La cámara no está disponible")
  exit()

while True:
    #paso4 declarar 2 variables la 1ra para el estado y la 2da para captura fotogramas
    ret, frame = cap.read()

    #paso5 pregunta si ban esta en true para mostrar fotogramas
    if ret == True:
        cv2.imshow('WebCam On', frame)

        #paso6 condicion de termino o cierre
        if cv2.waitKey(1) & 0xFF == ord('a'):
            break

# Liberar la cámara
cap.release()

# Destruir todas las ventanas abiertas
cv2.destroyAllWindows()