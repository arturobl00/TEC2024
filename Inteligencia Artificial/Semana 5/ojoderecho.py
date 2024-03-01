import cv2
import numpy as np

detectaRostro = cv2.CascadeClassifier('haarcascade_frontalface_default.xml')
detectaojos = cv2.CascadeClassifier('haarcascade_righteye_2splits.xml')

#Captura de video
cap = cv2.VideoCapture(0)

while True:
    ret, frame = cap.read()
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    rostro = detectaRostro.detectMultiScale(gray, scaleFactor=1.1, minNeighbors=1)
    
    if ret==True:
        for (x,y,w,h) in rostro:
            #cv2.rectangle(frame, (x,y), (x+w,y+h), (0,0,255), 2)
            roi_gray = gray[y:y+h, x:x+w]
            roi_color = frame[y:y+h, x:x+w]

            ojos = detectaojos.detectMultiScale(roi_gray)

            for (ex, ey, ew, eh) in ojos:
                cv2.rectangle(roi_color,(ex,ey),(ex+ew,ey+eh),(255,0,0),2)

    cv2.imshow('Rostros en Videos',frame)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
