import cv2 as cv
import numpy as np


def fast_corner(img, dens_need):
    img_gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
    fast_para = 50
    fast = cv.FastFeatureDetector_create()
    fast.setThreshold(fast_para)
    key_point = fast.detect(img_gray, None)
    img_size = img.shape
    dens_real = float(len(key_point)) / (img_size[0] * img_size[1])
    while dens_real < dens_need:
        fast_para -= 1
        fast.setThreshold(fast_para)
        key_point = fast.detect(img_gray, None)
        dens_real = float(len(key_point)) / (img_size[0] * img_size[1])

    return key_point


def num_verify(num, num_max):
    result = num
    if num < 0:
        result = 0
    elif num >= num_max:
        result = num_max - 1

    return result


if __name__ == '__main__':
    pic = cv.imread('../pic/forest_2.jpg')
    pic_mark = pic.copy()
    check_rect_len = 100
    num_of_points = 40
    pic_size = pic.shape
    u_max = pic_size[1]
    v_max = pic_size[0]
    density = float(num_of_points) / check_rect_len**2
    corner = []

    for v in range(0, v_max, check_rect_len):
        for u in range(0, u_max, check_rect_len):
            sub_u_max = u + check_rect_len
            sub_v_max = v + check_rect_len
            sub_u_max = num_verify(sub_u_max, u_max)
            sub_v_max = num_verify(sub_v_max, v_max)
            # if sub_u_max >= u_max:
            #     sub_u_max = u_max - 1
            # if sub_v_max >= v_max:
            #     sub_v_max = v_max - 1
            sub_pic = pic[v:sub_v_max+1, u:sub_u_max+1].copy()

            sub_corner = fast_corner(sub_pic, density)
            sub_corner_num = len(sub_corner)

            for i in range(sub_corner_num):
                temp_v = int(round(sub_corner[i].pt[1] + v))
                temp_u = int(round(sub_corner[i].pt[0] + u))
                while len(corner)-1 < temp_v:
                    corner.append([])
                corner[temp_v].append(temp_u)

                draw_u_min = num_verify(temp_u-1, u_max)
                draw_u_max = num_verify(temp_u+1, u_max)
                draw_v_min = num_verify(temp_v-1, v_max)
                draw_v_max = num_verify(temp_v+1, v_max)
                pic_mark[draw_v_min:draw_v_max+1, draw_u_min:draw_u_max+1] = [0, 0, 255]

    data = open('../pic/image/homogen_corner/forest_2_corner_100_40.txt', 'w')
    data_len = len(corner)
    for i in range(data_len):
        for j in corner[i]:
            data.write(str(i))
            data.write(' ')
            data.write(str(j))
            data.write('\n')
    data.close()
    cv.imshow('result', pic_mark)
    cv.imwrite('../pic/image/homogen_corner/forest_2_corner_100_40.jpg', pic_mark)
    cv.waitKey(0)
