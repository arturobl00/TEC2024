import cv2
import numpy as np

#Varible igual a datos del modelo
detectorRostros = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')

#Captura de video
cap = cv2.VideoCapture(0)

while True:
    ret, frame = cap.read()
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    if ret==True:
        rostros = detectorRostros.detectMultiScale(gray, 1.1, 1)
        for (x,y,w,h) in rostros:
            cv2.rectangle(frame, (x,y), (x+w,y+h), (0,0,255), 2)

    cv2.imshow('Rostros en Videos',frame)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
