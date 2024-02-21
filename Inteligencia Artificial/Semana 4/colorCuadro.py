import cv2;
import numpy as np;

#Iniciar Captura video web cam
cap = cv2.VideoCapture(0)

#Parametros de Color
azulBajo = np.array([100,100,20],np.uint8)
azulAlto = np.array([125,255,255],np.uint8)

while True:
    ret, frame = cap.read()
    if ret== True:
        frameHSV = cv2.cvtColor(frame,cv2.COLOR_BGR2HSV)
        mask = cv2.inRange(frameHSV,azulBajo,azulAlto)
        contornos,_ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        for c in contornos:
            area = cv2.contourArea(c)
            if area > 3000:
                #Me entrega las coordenadas y tamaño de la deteccion
                x,y,w,h = cv2.boundingRect(c)
                cv2.rectangle(frame,(x,y), (x+w, y+h), (255,0,0), 3)
                cv2.putText(frame, 'Azul', (x-10, y-10), 0, 1, (255,0,0), 2)
        
        cv2.imshow('Dectector Color',frame)
        if cv2.waitKey(1) & 0xFF == ord('s'):
            break

cap.release()
cv2.destroyAllWindows()