set(llhttp_SRCS
 api.c
 http.c
 llhttp.c
 )

# 生成动态库(SHARED)
add_library(llhttp SHARED ${llhttp_SRCS})

# 安装文件到目录下
install(TARGETS llhttp LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
