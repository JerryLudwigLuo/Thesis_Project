import cv2 as cv
import numpy as np


if __name__ == '__main__':

    pic = cv.imread('../pic/forest_2.jpg')
    pic_gray = cv.cvtColor(pic, cv.COLOR_RGB2GRAY)
    pic_gray32 = np.float32(pic_gray)
    harris_detection = cv.cornerHarris(pic_gray32, 2, 3, 0.04)
    harris_detection = cv.dilate(harris_detection, None)
    pic[harris_detection > 0.01*harris_detection.max()] = [0, 0, 255]
    cv.imshow('result', pic)
    cv.imwrite('../pic/image/result_4.jpg', pic)
    # print(harris_detection)
    # print(harris_detection.max())
    # print(harris_detection.mean())
    # cv.imshow('test', np.int8(pic_gray32))
    # cv.imshow('test_2', pic_gray32)
    # cv.imshow('test_1', pic_gray)
    cv.waitKey(0)
