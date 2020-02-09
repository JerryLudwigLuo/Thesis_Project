import cv2 as cv

img = cv.imread('/home/jerryluo/Learn/img.jpg', 1)
cv.namedWindow('original', cv.WINDOW_AUTOSIZE)
cv.imshow('original', img)

cv.namedWindow('pyrdown', cv.WINDOW_AUTOSIZE)
gpyr_img_down = cv.pyrDown(img)
cv.imshow('pyrdown', gpyr_img_down)

cv.namedWindow('pyrup',cv.WINDOW_AUTOSIZE)
gpyr_img_up = cv.pyrUp(gpyr_img_down)
cv.imshow('pyrup', gpyr_img_up)

cv.waitKey(0)
cv.destroyAllWindows()
