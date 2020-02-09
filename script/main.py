import cv2 as cv
import numpy as np
from matplotlib import pyplot as plt


class GetHomography:
    """a Class for calculating Homography with RANSAC """
    def __init__(self):
        self.__pic_1 = [[]]
        self.__pic_2 = [[]]
        self.__pic_1_gray = [[]]
        self.__pic_2_gray = [[]]
        self.__pic_1_marked = [[]]
        self.__pic_2_marked = [[]]
        self.__pic_1_warp = [[]]

    def read_image(self, str_1, str_2):
        self.__pic_1 = cv.imread(str_1)
        self.__pic_2 = cv.imread(str_2)
        self.__pic_1_marked = self.__pic_1.copy()
        self.__pic_2_marked = self.__pic_2.copy()
        self.__pic_1_gray = cv.cvtColor(self.__pic_1, cv.COLOR_RGB2GRAY)
        self.__pic_2_gray = cv.cvtColor(self.__pic_2, cv.COLOR_RGB2GRAY)

    def fast_detector(self, threshold, output_path_1, output_path_2):
        fast = cv.FastFeatureDetector_create()
        fast.setThreshold(threshold)
        key_point_1 = fast.detect(self.__pic_1_gray, None)
        key_point_2 = fast.detect(self.__pic_2_gray, None)
        data_file_1 = open(output_path_1 + '.txt', 'w')
        data_file_2 = open(output_path_2 + '.txt', 'w')
        for i in range(len(key_point_1)):
            data_file_1.write(str(key_point_1[i].pt))
            data_file_1.write("\n")
            for j in range(-1, 2, 1):
                for k in range(-1, 2, 1):
                    self.__pic_1_marked[int(key_point_1[i].pt[1]) + j][int(key_point_1[i].pt[0]) + k] = [0, 0, 255]
        for i in range(len(key_point_2)):
            data_file_2.write(str(key_point_2[i].pt))
            data_file_2.write("\n")
            for j in range(-1, 2, 1):
                for k in range(-1, 2, 1):
                    self.__pic_2_marked[int(key_point_2[i].pt[1]) + j][int(key_point_2[i].pt[0]) + k] = [0, 0, 255]
        cv.imwrite(output_path_1 + '.jpg', self.__pic_1_marked)
        cv.imwrite(output_path_2 + '.jpg', self.__pic_2_marked)
        data_file_1.close()
        data_file_2.close()
        return [key_point_1, self.__pic_1_marked, key_point_2, self.__pic_2_marked]

    def homography_calculator(self, point_list_1, point_list_2):
        correspond_point_1 = np.float32(point_list_1)
        correspond_point_2 = np.float32(point_list_2)
        homo_mask = cv.findHomography(correspond_point_1, correspond_point_2)
        return homo_mask[0]

    def warp_image(self, homo_mask, output_path, marked=1):
        size = (self.__pic_1.shape[1], self.__pic_1.shape[0])
        homo_matrix = np.mat(homo_mask)
        if marked == 1:
            self.__pic_1_warp = cv.warpPerspective(self.__pic_1_marked, homo_matrix, size)
        else:
            self.__pic_1_warp = cv.warpPerspective(self.__pic_1, homo_matrix, size)
        cv.imwrite(output_path, self.__pic_1_warp)
        return self.__pic_1_warp


if __name__ == '__main__':
    find_homo = GetHomography()
    orig_pic_path_1 = '../pic/cross_1.jpg'
    orig_pic_path_2 = '../pic/cross_2.jpg'
    output_1 = '../pic/image/new/result_1'
    output_2 = '../pic/image/new/result_2'
    pick_point_1 = [(374, 161), (576, 896), (1376, 132), (1288, 1062)]
    pick_point_2 = [(146, 29), (18, 792), (1107, 419), (642, 1260)]
    find_homo.read_image(orig_pic_path_1, orig_pic_path_2)
    [key_point_1_, result_1, key_point_2_, result_2] = find_homo.fast_detector(50, output_1, output_2)
    homography_1to2 = find_homo.homography_calculator(pick_point_1, pick_point_2)
    result = find_homo.warp_image(homography_1to2, "../pic/image/new/result_1to2.jpg")

    # cv.imshow("result", result)
    # cv.imshow('result_1', result_1)
    # cv.imshow('result_2', result_2)
    # cv.waitKey(0)
