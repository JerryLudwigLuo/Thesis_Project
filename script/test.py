import cv2 as cv

print(cv.__version__)
img = cv.imread('/home/jerryluo/Learn/pic.jpg',1)
cv.namedWindow('image',cv.WINDOW_NORMAL)
cv.imshow('image',img)
cv.waitKey(0)
cv.destroyAllWindows()