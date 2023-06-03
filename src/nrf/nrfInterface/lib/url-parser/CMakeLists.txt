set(url_parser_SRCS
 url_parser.c
 )

# 生成动态库(SHARED)
add_library(url_parser SHARED ${url_parser_SRCS})

# 安装文件到目录下
install(TARGETS url_parser LIBRARY DESTINATION ${PROJECT_SOURCE_DIR}/lib)
