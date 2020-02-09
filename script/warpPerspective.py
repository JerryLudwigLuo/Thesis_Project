import numpy as np
import cv2 as cv
import math


def match(img_compare, img_original, u, v, mask_size, max_diff):
    gray_com = img_compare # cv.cvtColor(img_compare, cv.COLOR_BGR2GRAY)
    gray_ori = img_original # cv.cvtColor(img_original, cv.COLOR_BGR2GRAY)
    sum_com = 0
    sum_ori = 0
    pic_size = gray_com.shape
    width = pic_size[1]
    height = pic_size[0]

    for i in range(-mask_size, mask_size + 1):
        if (v + i < 0) or (v + i >= height):
            continue
        for j in range(-mask_size, mask_size+ 1):
            if (u + j < 0) or (u + j >= width):
                continue
            else:
                value_com = gray_com[v+i][u+j]
                value_ori = gray_ori[v+i][u+j]
            sum_com += value_com
            sum_ori += value_ori

    if abs(sum_com - sum_ori) <= max_diff:
        return True
    else:
        return False


if __name__ == '__main__':
    img_left = cv.imread("../pic/wide-left-rectified-8.jpg")
    img_right = cv.imread("../pic/wide-right-rectified-8.jpg")

    matrix_1 = [[0.958868143766, 6.7178820305e-3, 58.9369428085],
               [1.087374e-4, 1.0000535408, 0.38973],
               [-1.829473976e-6, 3.83157236e-7, 1]]
    matrix_2 = [[1.02238807683, 4.79399107489e-3, 31.7148660774],
               [2.4142686e-3, 1.0056699281, -0.9376],
               [1.641946644e-6, 4.471998658e-6, 1]]

    size = img_left.shape
    size_trans = (size[1], size[0])

    cv_matrix_1 = np.mat(matrix_1)
    cv_matrix_2 = np.mat(matrix_2)

    pers_1 = cv.warpPerspective(img_right, cv_matrix_1, size_trans)
    pers_2 = cv.warpPerspective(img_right, cv_matrix_2, size_trans)

    pers_1 = cv.cvtColor(pers_1, cv.COLOR_BGR2GRAY)
    pers_2 = cv.cvtColor(pers_2, cv.COLOR_BGR2GRAY)
    img_left_gray = cv.cvtColor(img_left, cv.COLOR_BGR2GRAY)
    """
    cv.imshow("left_pic", img_left)
    cv.imshow("result_1", result_1)
    cv.imshow("result_2", result_2)

    cv.imwrite("../pic/result_1.jpg", result_1)
    cv.imwrite("../pic/result_2.jpg", result_2)

    print(size)
    """
    alpha_1 = np.zeros((size[0], size[1]), int)
    # alpha_1 = cv.cvtColor(alpha_1, cv.CV_8U)
    alpha_2 = np.zeros((size[0], size[1]), int)
    # alpha_2 = cv.cvtColor(alpha_2, cv.CV_8U)

    for v in range(size[0]):
        for u in range(size[1]):
            if match(pers_1, img_left_gray, u, v, 1, 500):
                alpha_1[v][u] = 255
            if match(pers_2, img_left_gray, u, v, 1, 500):
                alpha_2[v][u] = 255

    cv.imshow("left_pic", img_left)
    cv.imshow("result_1", alpha_1)
    cv.imshow("result_2", alpha_2)

    cv.waitKey(0)
    cv.destroyAllWindows()
