import matplotlib.pyplot as plt
import numpy as np
import sys

def get_value(filename:str)->(int,float,int,[],[]):
    N,FS,W,re_list , im_list = 0,0.0,0,[] ,[]
    f = open(filename,"r")
    N_str,FS_str,W_str = f.readline().split()
    N = int(N_str.strip())
    FS = int(FS_str.strip())
    W = int(W_str.strip())
    for line in f.readlines():
        re_str,im_str = line.split()
        re,im = re_str.strip(),im_str.strip()
        re_list.append(int(re))
        im_list.append(int(im))
    f.close()
    return (N,FS,W,re_list,im_list)

def convert_value(re_list:[],im_list:[],W:int)->([],[]):
    conv_im_list,conv_re_list = [],[]
    for i in range(len(im_list)):
        conv_re_list.append(  (re_list[i] - 2**W) if (re_list[i] > 2**W/2-1) else re_list[i] )
        conv_im_list.append(  (im_list[i] - 2**W) if (im_list[i] > 2**W/2-1) else im_list[i] )
    return (conv_re_list,conv_im_list)

def bit_reverse(value:int,N:int)->int:
    bit_num =  int(np.log2(N))
    reverse_value = 0
    for idx in range(bit_num):
        reverse_value += ( value & 0x01 ) * 2**(bit_num-idx-1)
        value = value >> 1
    return reverse_value

def calc_magnitude(re_list:[],im_list:[],N:int)->[]:
    mag_list = []
    for idx in range(len(im_list)):
        correct_idx = bit_reverse(idx,N)
        mag_list.append( (re_list[correct_idx]**2 + im_list[correct_idx]**2) ** 0.5 )
    mag_list = np.fft.fftshift(mag_list)
    return mag_list

def show(N:int,FS:float,mag_list:[])->None:
    x_axis = list(map(lambda x: x*FS/N,range(int(-N/2),int(N/2))))

    #plt.plot(x_axis_data, y_axis_data, 'b*--', alpha=0.5, linewidth=1, label='acc')
    # plot中参数的含义
    # 1.横轴值
    # 2.纵轴值，
    # 3.线的形状（'s'方块,'o'实心圆点，'*'五角星 ) 以及颜色
    # 4.透明度
    # 5.线的宽度
    # 6.标签 
    plt.plot(x_axis,mag_list)

    # plt.legend()  #显示上面的label
    plt.xlabel('Time')     #x_label
    plt.ylabel('Magnitude')#y_label
    plt.title("N={},FS={}".format(N,FS))
    plt.show()

def main():
    N,FS,W,re_list,im_list = get_value(sys.argv[1])
    conv_re_list,conv_im_list = convert_value(re_list,im_list,W)
    mag_list = calc_magnitude(conv_re_list,conv_im_list,N)
    show(N,FS,mag_list)

if __name__ == "__main__":
    main()