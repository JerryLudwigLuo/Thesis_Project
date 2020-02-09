import cv2 as cv
import numpy as np


def rgb_dis(img_1, img_2, u, v, center_boundary_dist):
    # print(u, v)
    max_size = img_1.shape
    u_min = u - center_boundary_dist
    u_max = u + center_boundary_dist
    v_min = v - center_boundary_dist
    v_max = v + center_boundary_dist
    if v_min < 0:
        u_min = 0
    if v_max >= max_size[0]:
        v_max = max_size[0]-1
    if u_min < 0:
        u_min = 0
    if u_max >= max_size[1]:
        u_max = max_size[1]-1
    array_img_1 = np.int32(img_1)
    array_img_2 = np.int32(img_2)
    sum_b_1 = np.sum(array_img_1[v_min:v_max + 1, u_min:u_max + 1, 0])
    sum_b_2 = np.sum(array_img_2[v_min:v_max + 1, u_min:u_max + 1, 0])
    sum_g_1 = np.sum(array_img_1[v_min:v_max + 1, u_min:u_max + 1, 1])
    sum_g_2 = np.sum(array_img_2[v_min:v_max + 1, u_min:u_max + 1, 1])
    sum_r_1 = np.sum(array_img_1[v_min:v_max + 1, u_min:u_max + 1, 2])
    sum_r_2 = np.sum(array_img_2[v_min:v_max + 1, u_min:u_max + 1, 2])
    diff_b = float(sum_b_1 - sum_b_2) / ((u_max - u_min + 1) * (v_max - v_min + 1))
    diff_g = float(sum_g_1 - sum_g_2) / ((u_max - u_min + 1) * (v_max - v_min + 1))
    diff_r = float(sum_r_1 - sum_r_2) / ((u_max - u_min + 1) * (v_max - v_min + 1))
    # diff_b = int(img_1[v][u][0]) - int(img_2[v][u][0])
    # diff_g = int(img_1[v][u][1]) - int(img_2[v][u][1])
    # diff_r = int(img_1[v][u][2]) - int(img_2[v][u][2])
    temp = (diff_b**2 + diff_g**2 + diff_r**2) / 3
    result = np.sqrt(temp)

    return result


if __name__ == '__main__':
    pic_base = cv.imread('../pic/cross_2.jpg')
    pic_warp = cv.imread('../pic/image/no-point/result_9to10_center_at_cross.jpg')
    pic_base_pyr = []
    pic_warp_pyr = []
    pic_diff_pyr = []
    times = 3
    tmp_pic_base = pic_base.copy()
    tmp_pic_warp = pic_warp.copy()
    tmp_pic_diff = pic_base.copy()
    for i in range(times):
        # tmp_pic_1 = cv.pyrDown(tmp_pic_1)
        # tmp_pic_2 = cv.pyrDown(tmp_pic_2)
        pic_base_pyr.append(tmp_pic_base)
        pic_warp_pyr.append(tmp_pic_warp)
        size_pic = tmp_pic_base.shape
        u_max = size_pic[1]
        v_max = size_pic[0]
        cen_bon_dist = 8
        for j in range(0, v_max, cen_bon_dist + 1):
            for k in range(0, u_max, cen_bon_dist + 1):
                # print(j, k)
                dist = rgb_dis(pic_warp_pyr[i], pic_base_pyr[i], k, j, cen_bon_dist)
                dist = np.int32(np.round(dist))
                # print(dist)
                j_min = j - cen_bon_dist
                j_max = j + cen_bon_dist
                k_min = k - cen_bon_dist
                k_max = k + cen_bon_dist
                if j_min < 0:
                    j_min = 0
                if k_min < 0:
                    k_min = 0
                if j_max >= v_max:
                    j_max = v_max - 1
                if k_max >= u_max:
                    k_max = u_max - 1
                tmp_pic_diff[j_min:j_max+1, k_min:k_max+1] = (dist, dist, dist)
        pic_diff_pyr.append(tmp_pic_diff)

        tmp_pic_base = cv.pyrDown(tmp_pic_base)
        tmp_pic_warp = cv.pyrDown(tmp_pic_warp)
        tmp_pic_diff = cv.pyrDown(tmp_pic_diff)
        cv.imshow('pic_1' + str(i), pic_diff_pyr[i])
        cv.imwrite('../pic/image/difference_pic/center_at_cross_8pix_pyr_' + str(i) + '.jpg', pic_diff_pyr[i])

    cv.waitKey(0)
