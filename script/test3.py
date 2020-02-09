import cv2 as cv

img = cv.imread('../pic/image/layer/cross1to2_center_no-pyr.jpg')
img2 = img[600:900, 0:300]
print(img2)
cv.imshow("test", img2)
cv.imshow("ori", img)
cv.waitKey(0)
