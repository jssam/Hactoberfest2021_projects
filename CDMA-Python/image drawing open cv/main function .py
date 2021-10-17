while True:
    success, img = cap.read()
    imgResult = img.copy()
  
     newPoints = findColor(img, myColors, myColorValues)
    if len(newPoints)!= 0:
        for newP in newPoints:
            myPoints.append(newP)
    if len(myPoints)!= 0:
  
        # drawing the points
        drawOnCanvas(myPoints, myColorValues)
    
    # displaying output on Screen
    cv2.imshow("Result", imgResult)
      
    if cv2.waitKey(1) and 0xFF == ord('q'): 
        break
