import cv2 as cv
import numpy as np

print(cv.__version__)
img = cv.imread('/home/jerryluo/Learn/pic.jpg')
img2 = img[50:900, 10:1000]
# img2 = np.float32(img2)
img2 = cv.cvtColor(img2, cv.COLOR_BGR2HSV)
img[0:500, 0:500] = (255, 255, 255)
# cv.namedWindow('image', cv.WINDOW_NORMAL)
# cv.imshow('image', img)
# cv.imshow('test', img2)
print(img2[:, :, 0].mean())
print(img2)
cv.waitKey(0)
cv.destroyAllWindows()
