import cv2 as cv
import numpy as np


def extract_point(row, col, rec_size, fea_position):
    result = [False]
    row_max = row+rec_size+1
    if row_max > len(fea_position):
        row_max = len(fea_position)
    for i in range(row, row_max):
        length = len(fea_position[i])
        if length > 0:
            for j in fea_position[i]:
                if (j >= col) and (j <= col+rec_size):
                    result[0] = True
                    result.append([j, i])
    return result


def compare_color(pic_right, pic_warp, field):
    field_ = field
    field_[2] += 1
    field_[3] += 1
    for i in range(len(field)):
        if field[i] < 0:
            field_[i] = 0
    pic_size_ = pic_right.shape
    pic_size_ = [pic_size_[1], pic_size_[0]]
    if field_[2] > pic_size_[0]:
        field_[2] = pic_size_[0]
    if field_[3] > pic_size_[1]:
        field_[3] = pic_size_[1]

    pic_right_com = pic_right[field_[1]:field_[3], field_[0]:field_[2]]
    pic_warp_com = pic_warp[field_[1]:field_[3], field_[0]:field_[2]]
    # pic_right_com = np.float32(pic_right_com)
    # pic_warp_com = np.float32(pic_warp_com)

    pic_right_com = cv.cvtColor(pic_right_com, cv.COLOR_BGR2HSV_FULL)
    pic_warp_com = cv.cvtColor(pic_warp_com, cv.COLOR_BGR2HSV_FULL)
    pic_right_mean_vector = np.array([pic_right_com[:, :, 0].mean(), pic_right_com[:, :, 1].mean(), pic_right_com[:, :, 2].mean()])
    pic_warp_mean_vector = np.array([pic_warp_com[:, :, 0].mean(), pic_warp_com[:, :, 1].mean(), pic_warp_com[:, :, 2].mean()])
    # diff = abs(pic_right_mean_vector - pic_warp_mean_vector)
    diff = pic_right_mean_vector - pic_warp_mean_vector
    # diff[0] = int(diff[0]/180*255)
    # diff[1] = int(diff[1]/255*100)
    # diff[2] = int(diff[2]/255*100)

    # print(diff)
    return diff


if __name__ == '__main__':
    pyr_num = 1
    pic_right_ori = cv.imread('../pic/cross_2.jpg')
    pic_wap_ori = cv.imread('../pic/image/no-point/result_9to10_center_at_cross.jpg')
    pic_right_pyr = pic_right_ori.copy()
    pic_wap_pyr = pic_wap_ori.copy()
    for i in range(pyr_num):
        pic_right_pyr = cv.pyrDown(pic_right_pyr)
        pic_wap_pyr = cv.pyrDown(pic_wap_pyr)
    pic_size = pic_right_ori.shape
    pic_size = [pic_size[1], pic_size[0]]
    # print(pic_right_ori.shape)
    # print(pic_right_pyr.shape)
    # print(pic_size)
    # cv.imshow('result', pic_right_pyr)

    point_file = open('../pic/image/point-data/result_10_fast_50.txt', 'r')
    feature_point = []
    file_line = point_file.readline().split()
    while file_line:
        data_u = int(file_line[0])
        data_v = int(file_line[1])
        while len(feature_point) <= data_v:
            feature_point.append([])
        feature_point[data_v].append(data_u)
        file_line = point_file.readline().split()
    point_file.close()
    # print(feature_point)

    rect_size = 8
    proportion = 2**pyr_num
    v = 0
    u = 0
    pic_layer = pic_right_ori.copy()
    print(pic_size)
    while v < pic_size[1]:
        while u < pic_size[0]:
            draw_vector = compare_color(pic_right_pyr, pic_wap_pyr, [int(u/proportion), int(v/proportion), int((u+rect_size)/proportion), int((v+rect_size)/proportion)])
            # print(draw_vector[0])
            draw_vector = np.float32(draw_vector)
            # print(draw_vector[0])
            draw_vector = np.round(draw_vector)
            draw_vector = np.int32(draw_vector)
            draw_vector = np.abs(draw_vector)
            # print(draw_vector[0])
            '''draw difference'''
            # pic_layer[v:v+rect_size+1, u:u+rect_size+1] = (draw_vector[0], draw_vector[1], draw_vector[2])

            effect_field = float(np.sum(draw_vector))/3
            effect_fea = 0.0
            layer_gray_val = 255
            cor_point = extract_point(v, u, rect_size, feature_point)
            if cor_point[0]:
                for i in range(1, len(cor_point)):
                    point_row = cor_point[i][1]
                    point_col = cor_point[i][0]
                    cor_point_diff = compare_color(pic_right_ori, pic_wap_ori, [point_col-1, point_row-1, point_col+1, point_row+1])
                    cor_point_diff = np.float32(cor_point_diff)
                    cor_point_diff = np.round(cor_point_diff)
                    cor_point_diff = np.int32(cor_point_diff)
                    cor_point_diff = np.abs(cor_point_diff)
                    '''draw difference'''
                    # pic_layer[point_row-1:point_row+2, point_col-1:point_col+2] = (cor_point_diff[0], cor_point_diff[1], cor_point_diff[2])

                    effect_fea += float(np.sum(cor_point_diff))/3
                effect_fea /= len(cor_point)-1
                layer_gray_val = effect_fea*0.6 + effect_field*0.4
            else:
                layer_gray_val = effect_field
            '''draw layer gray value'''
            pic_layer[v:v + rect_size + 1, u:u + rect_size + 1] = (layer_gray_val, layer_gray_val, layer_gray_val)
            u += rect_size
        v += rect_size
        u = 0

    cv.imshow("result", pic_layer)
    cv.imwrite('../pic/image/layer/cross1to2_center_pyr-1-rect-8_gray_0-10.jpg', pic_layer)
    # print(pic_layer)
    # cv.imshow("test", pic_wap_ori)
    cv.waitKey(0)
