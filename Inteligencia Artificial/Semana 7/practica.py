import cv2
import mediapipe as mp
import numpy as np

#Importamos las librerias de dibujo y deteccion esto es de lo mas importate
mp_drawing = mp.solutions.drawing_utils
mp_hands = mp.solutions.hands

cap = cv2.VideoCapture(0)
with mp_hands.Hands(
    static_image_mode=False,
    max_num_hands = 2,
    min_detection_confidence=0.5) as hands:

    #Ciclo de video
    while True:
        ret, frame = cap.read()
        if ret == False:
            break
        
        #Tomamos la medida
        height, width, _ = frame.shape
        #Rotamos la imagen
        frame = cv2.flip(frame,1)
        #Transformamos de bgr a rgb
        frame_rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)

        result = hands.process(frame_rgb)

        oscura = np.zeros(frame.shape, np.uint8)
        
        if result.multi_hand_landmarks is not None:
        #Si tenemos informacion entonces con un form recorremos los datos y dibujamos
        #Esto es opcional y solo para personalizar la ubicación de los puntos checa documentación para puntos
            index = [0,4,8,12,16,20]
            for hand_landmarks in result.multi_hand_landmarks:
                #Dibujar los 21 puntos de deteccion
                mp_drawing.draw_landmarks(
                frame, hand_landmarks, mp_hands.HAND_CONNECTIONS)

                mp_drawing.draw_landmarks(
                oscura, hand_landmarks, mp_hands.HAND_CONNECTIONS)

                #Ciclo para mostar los puntos del index opcional
                for (i, points) in enumerate(hand_landmarks.landmark):
                    if i in index:
                        x = int(points.x * width)
                        y = int(points.y * height)
                        cv2.circle(frame, (x, y), 10, (0,0,255), -1)
                        cv2.circle(frame, (x, y), 2, (255,255,255), -1)
        
        #Mostramos

        frameHSV = cv2.cvtColor(frame,cv2.COLOR_BGR2HSV)
        cv2.imshow("Video normal",frame)
        cv2.imshow("Video",oscura)

        if cv2.waitKey(1) & 0xFF == ord('s'):
            break

cap.realice()
cv2.destroyAllWindows()
