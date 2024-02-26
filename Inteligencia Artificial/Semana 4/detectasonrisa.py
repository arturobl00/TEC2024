import cv2
import numpy as np

detectaRostro = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
detectasonrisa = cv2.CascadeClassifier('haarcascade_smile.xml')

#Captura de video
cap = cv2.VideoCapture(0)

while True:
    ret, frame = cap.read()
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    rostro = detectaRostro.detectMultiScale(gray, scaleFactor=1.1, minNeighbors=1)
    
    if ret==True:
        for (x,y,w,h) in rostro:
            cv2.rectangle(frame, (x,y), (x+w,y+h), (0,0,255), 2)
            
            gray_temp = gray[y:y+h, x:x+w]

            sonrisa = detectasonrisa.detectMultiScale(gray_temp, scaleFactor=1.3, minNeighbors=5)

            for i in sonrisa:
                if len(sonrisa)>1:
                    cv2.putText(frame,"Smiling",(x,y-50),cv2.FONT_HERSHEY_PLAIN, 2,(255,0,0),3,cv2.LINE_AA)

    cv2.imshow('Rostros en Videos',frame)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
