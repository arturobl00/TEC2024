import cv2
import mediapipe as mp
import imutils

#Carga del modelo
mp_face_detection = mp.solutions.face_detection
mp_drawing = mp.solutions.drawing_utils
mp_drawing_styles = mp.solutions.drawing_styles
mp_hands = mp.solutions.hands


cap = cv2.VideoCapture(0)

with mp_hands.Hands(
    model_complexity=0,
    min_detection_confidence=0.5,
    min_tracking_confidence=0.5) as hands:


    with mp_face_detection.FaceDetection(
        min_detection_confidence=0.5) as face_detection:
        while True:
            ret, frame = cap.read()
            if ret == False:
                break
            frame = imutils.resize(frame, width=1000, height=600)
            frame = cv2.flip(frame, 1)
            frame_rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)  

            results = face_detection.process(frame_rgb)
            manos = hands.process(frame_rgb)

            if results.detections is not None:
                for detection in results.detections:
                    mp_drawing.draw_detection(frame, detection,
                        mp_drawing.DrawingSpec(color=(255,255,255), circle_radius=4),
                        mp_drawing.DrawingSpec(color=(255, 0, 255))) 
                    
            if manos.multi_hand_landmarks is not None:
                for hand_landmarks in manos.multi_hand_landmarks:
                    mp_drawing.draw_landmarks(
                    frame, hand_landmarks, mp_hands.HAND_CONNECTIONS)
            
            cv2.imshow("Frame", frame)
            k = cv2.waitKey(1) & 0xFF
            if k == 27:
                break

cap.release()
cv2.destroyAllWindows()