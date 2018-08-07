LOCAL_PATH:= $(call my-dir)/..

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_CFLAGS += -Wall -Wfatal-errors -fPIC -Ofast

LOCAL_SRC_FILES := src/activation_layer.c src/activations.c src/avgpool_layer.c \
src/batchnorm_layer.c src/blas.c src/box.c src/col2im.c  \
src/connected_layer.c src/convolutional_layer.c src/cost_layer.c \
src/crnn_layer.c src/crop_layer.c src/cuda.c src/data.c \
src/deconvolutional_layer.c src/demo.c src/detection_layer.c \
src/dropout_layer.c src/gemm.c src/gru_layer.c src/im2col.c src/image.c \
src/layer.c src/list.c src/local_layer.c src/lstm_layer.c src/matrix.c \
src/maxpool_layer.c src/network.c src/normalization_layer.c \
src/option_list.c src/parser.c src/region_layer.c src/reorg_layer.c \
src/rnn_layer.c src/route_layer.c src/shortcut_layer.c src/softmax_layer.c src/compare.c src/yolo_layer.c src/iseg_layer.c src/logistic_layer.c src/l2norm_layer.c src/upsample_layer.c \
src/tree.c src/utils.c
LOCAL_SRC_FILES += examples/art.c examples/captcha.c examples/cifar.c \
examples/classifier.c examples/coco.c examples/darknet.c \
examples/detector.c examples/go.c examples/lsd.c \
examples/nightmare.c examples/regressor.c examples/rnn.c \
examples/rnn_vid.c examples/segmenter.c examples/super.c \
examples/tag.c examples/yolo.c examples/instance-segmenter.c\
 
APP_ABI := arm64-v8a

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := optional 
LOCAL_MODULE := darknet
include $(BUILD_EXECUTABLE)
#include $(BUILD_SHARED_LIBRARY)
