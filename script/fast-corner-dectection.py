import numpy as np
import cv2 as cv
from matplotlib import pyplot as plt


if __name__ == '__main__':
    pic = cv.imread('../pic/cross_1.jpg')
    pic_gray = cv.cvtColor(pic, cv.COLOR_RGB2GRAY)
    fast = cv.FastFeatureDetector_create()
    fast.setThreshold(50)
    key_point = fast.detect(pic_gray, None)
    # result = cv.drawKeypoints(pic, key_point, None, color=(0, 0, 255))
    result = pic.copy()
    # print("Threshold: {}".format(fast.getThreshold()))
    # print("nonmaxSuppression:{}".format(fast.getNonmaxSuppression()))
    # print("neighborhood: {}".format(fast.getType()))
    print("Total Keypoints with nonmaxSuppression: {}".format(len(key_point)))
    # print(key_point[0].pt)
    # print(key_point[0].pt[0])
    # print(result[int(key_point[0].pt[1])][int(key_point[0].pt[0])])
    # print(pic.shape)
    # data = open('../pic/image/result_9_fast25.txt', 'w')
    for i in range(len(key_point)):
        # data.write(str(key_point[i].pt))
        # data.write("\n")
        for j in range(-1, 2, 1):
            for k in range(-1, 2, 1):
                result[int(key_point[i].pt[1])+j][int(key_point[i].pt[0])+k] = [0, 0, 255]
    # data.close()
    # cv.imwrite('../pic/image/result_12.jpg', result)
    cv.imshow('result', result)
    # cv.imshow('original', pic)
    cv.waitKey(0)
