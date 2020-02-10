import cv2 as cv
import numpy as np


if __name__ == '__main__':
    '''center at cross'''
    # pick_point_1 = np.float32([[762, 673], [752, 683], [738, 697],
    #                            [732, 703], [810, 696], [797, 709],
    #                            [804, 713], [746, 741], [748, 747],
    #                            [752, 754], [753, 767], [793, 748],
    #                            [787, 754], [778, 763], [772, 768]])
    # pick_point_2 = np.float32([[708, 169], [703, 183], [696, 203],
    #                            [693, 211], [762, 172], [756, 188],
    #                            [764, 190], [721, 241], [726, 246],
    #                            [733, 251], [739, 263], [769, 228],
    #                            [766, 235], [761, 248], [758, 256]])
    pick_point_1 = np.float32([[673, 762], [683, 752], [697, 738],
                               [703, 732], [696, 810], [709, 797],
                               [713, 804], [741, 746], [747, 748],
                               [754, 752], [767, 753], [748, 793],
                               [754, 787], [763, 778], [768, 772]])
    pick_point_2 = np.float32([[169, 708], [183, 703], [203, 696],
                               [211, 693], [172, 762], [188, 756],
                               [190, 764], [241, 721], [246, 726],
                               [251, 733], [263, 739], [228, 769],
                               [235, 766], [248, 761], [256, 758]])
    homo_mask = cv.findHomography(pick_point_1, pick_point_2, cv.RANSAC)
    # print(homo_mask)

    pic = cv.imread('../pic/cross_1.jpg')
    size = pic.shape
    size_trans = (size[1], size[0])
    homo_matrix = np.mat(homo_mask[0])
    pic_warp = cv.warpPerspective(pic, homo_matrix, size_trans)

    cv.imwrite('../pic/image/RANSAC_warped/cross_1.jpg', pic_warp)
    cv.imshow('result', pic_warp)
    cv.waitKey(0)
