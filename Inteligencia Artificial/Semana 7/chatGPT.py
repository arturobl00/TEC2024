import cv2
import mediapipe as mp
import imutils

# Carga del modelo
mp_face_detection = mp.solutions.face_detection
mp_drawing = mp.solutions.drawing_utils

cap = cv2.VideoCapture(0)

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

        if results.detections is not None:
            for detection in results.detections:
                keypoints = mp_face_detection.get_keypoints_for_display(detection)
                left_eye_landmarks = keypoints.landmark[1]  # Índices de los landmarks del ojo izquierdo
                right_eye_landmarks = keypoints.landmark[2]  # Índices de los landmarks del ojo derecho

                # Dibujar los landmarks de los ojos
                mp_drawing.draw_landmarks(frame, left_eye_landmarks, mp_face_detection.FACE_CONNECTIONS)
                mp_drawing.draw_landmarks(frame, right_eye_landmarks, mp_face_detection.FACE_CONNECTIONS)

        cv2.imshow("Frame", frame)
        k = cv2.waitKey(1) & 0xFF
        if k == 27:
            break

cap.release()
cv2.destroyAllWindows()
