import cv2 as cv
import numpy as np

if __name__ == '__main__':
    # pick_point_1 = np.float32([(374, 161), (576, 896), (1376, 132), (1288, 1062)])
    # pick_point_2 = np.float32([(146, 29), (18, 792), (1107, 419), (642, 1260)])
    '''center at cross'''
    # pick_point_1 = np.float32([(683, 752), (703, 732), (734, 807), (754, 787)])
    # pick_point_2 = np.float32([(183, 703), (211, 693), (208, 776), (235, 766)])
    '''top of highway'''
    # pick_point_1 = np.float32([(417, 232), (433, 223), (462, 289), (481, 277)])
    # pick_point_2 = np.float32([(156, 111), (175, 109), (173, 181), (197, 179)])
    '''right of highway'''
    pick_point_1 = np.float32([(1376, 132), (1402, 106), (1425, 200), (1439, 186)])
    pick_point_2 = np.float32([(1107, 419), (1143, 407), (1127, 503), (1147, 495)])
    homo_mask = cv.findHomography(pick_point_1, pick_point_2)
    print(homo_mask[0])

    pic = cv.imread('../pic/cross_1.jpg')
    # pic = cv.imread('../pic/image/result_9.jpg')
    size = pic.shape
    size_trans = (size[1], size[0])
    homo_matrix = np.mat(homo_mask[0])
    pic_warp = cv.warpPerspective(pic, homo_matrix, size_trans)
    cv.imwrite('../pic/image/no-point/result_9to10_right_of_highway.jpg', pic_warp)

    cv.imshow('result', pic_warp)
    cv.waitKey(0)
