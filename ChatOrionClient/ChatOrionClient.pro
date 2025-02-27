QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    apply_friend_dialog.cpp \
    apply_friend_page.cpp \
    authen_friend_dialog.cpp \
    chat_dialog.cpp \
    chat_page.cpp \
    chat_view.cpp \
    custom_ui/apply_friend_item.cpp \
    custom_ui/apply_friend_list.cpp \
    custom_ui/con_user_item.cpp \
    custom_ui/contact_user_list.cpp \
    custom_ui/group_tip_item.cpp \
    custom_ui/loading_dlg.cpp \
    custom_ui/red_dot_label.cpp \
    find_failed_dialog.cpp \
    friend_info_page.cpp \
    self_info_dialog.cpp \
    utils/base_dialog.cpp \
    utils/common_utils.cpp \
    custom_ui/bubble_frame.cpp \
    custom_ui/chat_item_base.cpp \
    custom_ui/chat_user_item.cpp \
    custom_ui/chat_user_list.cpp \
    custom_ui/clicked_btn.cpp \
    custom_ui/clicked_label.cpp \
    custom_ui/clicked_once_label.cpp \
    custom_ui/content_bubble.cpp \
    custom_ui/customize_edit.cpp \
    custom_ui/emotion_bubble.cpp \
    custom_ui/emotion_label_item.cpp \
    custom_ui/friend_label.cpp \
    custom_ui/list_item_base.cpp \
    custom_ui/message_text_edit.cpp \
    custom_ui/picture_bubble.cpp \
    custom_ui/search_list.cpp \
    custom_ui/search_user_item.cpp \
    custom_ui/slip_button.cpp \
    custom_ui/state_widget.cpp \
    custom_ui/text_bubble.cpp \
    custom_ui/timer_btn.cpp \
    emotion_window.cpp \
    find_success_dialog.cpp \
    global.cpp \
    login_gui.cpp \
    main.cpp \
    network/http_mgr.cpp \
    network/tcp_mgr.cpp \
    normal_page.cpp \
    utils/keychainclass.cpp \
    utils/tools.cpp \
    user_data.cpp \
    user_mgr.cpp \
    utils/cui_helper.cpp \
    utils/frameless_wid_drag_mgr.cpp \
    utils/message_bus.cpp

HEADERS += \
    apply_friend_dialog.h \
    apply_friend_page.h \
    authen_friend_dialog.h \
    chat_dialog.h \
    chat_page.h \
    chat_view.h \
    custom_ui/apply_friend_item.h \
    custom_ui/apply_friend_list.h \
    custom_ui/con_user_item.h \
    custom_ui/contact_user_list.h \
    custom_ui/group_tip_item.h \
    custom_ui/loading_dlg.h \
    custom_ui/red_dot_label.h \
    find_failed_dialog.h \
    friend_info_page.h \
    self_info_dialog.h \
    utils/base_dialog.h \
    utils/common_utils.h \
    custom_ui/bubble_frame.h \
    custom_ui/chat_item_base.h \
    custom_ui/chat_user_item.h \
    custom_ui/chat_user_list.h \
    custom_ui/clicked_btn.h \
    custom_ui/clicked_label.h \
    custom_ui/clicked_once_label.h \
    custom_ui/content_bubble.h \
    custom_ui/customize_edit.h \
    custom_ui/emotion_bubble.h \
    custom_ui/emotion_label_item.h \
    custom_ui/friend_label.h \
    custom_ui/list_item_base.h \
    custom_ui/message_text_edit.h \
    custom_ui/picture_bubble.h \
    custom_ui/search_list.h \
    custom_ui/search_user_item.h \
    custom_ui/slip_button.h \
    custom_ui/state_widget.h \
    custom_ui/text_bubble.h \
    custom_ui/timer_btn.h \
    emotion_window.h \
    find_success_dialog.h \
    global.h \
    login_gui.h \
    network/http_mgr.h \
    network/tcp_mgr.h \
    normal_page.h \
    singleton.h \
    utils/keychainclass.h \
    utils/tools.h \
    user_data.h \
    user_mgr.h \
    utils/cui_helper.h \
    utils/frameless_wid_drag_mgr.h \
    utils/message_bus.h \
    utils/message_commands.h

FORMS += \
    apply_friend_dialog.ui \
    apply_friend_page.ui \
    authen_friend_dialog.ui \
    chat_dialog.ui \
    chat_page.ui \
    custom_ui/apply_friend_item.ui \
    custom_ui/chat_user_item.ui \
    custom_ui/con_user_item.ui \
    custom_ui/friend_label.ui \
    custom_ui/group_tip_item.ui \
    custom_ui/search_user_item.ui \
    emotion_window.ui \
    find_failed_dialog.ui \
    find_success_dialog.ui \
    friend_info_page.ui \
    login_gui.ui \
    normal_page.ui \
    self_info_dialog.ui

DESTDIR = $$PWD/bin

INCLUDEPATH += $$PWD/custom_ui
INCLUDEPATH += $$PWD/network
INCLUDEPATH += $$PWD/utils

include($$PWD/FrameWgt/FrameWgt.pri)
include($$PWD/qtkeychain.pri)

DISTFILES += \
    config.ini \
    res/pic/normal_logo.png

# Linux 系统
unix {
#    LIBS += -L$$PWD/../third/linux/qtkeychain/lib -lqt5keychain
#    INCLUDEPATH += $$PWD/../third/linux/qtkeychain/include
}

# Windows 系统
win32 {
    LIBS += -lCrypt32
    INCLUDEPATH += $$PWD/qtkeychain
    QMAKE_CXXFLAGS += -utf-8
}

win32-msvc* {
    QMAKE_CFLAGS += /utf-8
    QMAKE_CXXFLAGS += /utf-8
    QMAKE_CXXFLAGS += -Zm800
}

CONFIG += resources_big
CONFIG += utf8_source
QMAKE_RESOURCE_FLAGS += -no-compress

#win32:CONFIG(debug, debug | release) {
#    # Windows 环境配置
#    TargetConfig = $${PWD}/config.ini
#    TargetEmoji = $$PWD/emoji.json
#    TargetConfig = $$replace(TargetConfig, /, \\)  # 将路径中的 '/' 替换为 '\\'
#    TargetEmoji = $$replace(TargetEmoji, /, \\)

#    # 获取输出目录并转换路径分隔符
#    OutputDir = $${OUT_PWD}/$${DESTDIR}
#    OutputDir = $$replace(OutputDir, /, \\)  # 将路径中的 '/' 替换为 '\\'

#    # 在 Windows 上使用 `copy` 命令
#    QMAKE_POST_LINK += copy /Y \"$$TargetConfig\" \"$$OutputDir\"
#    QMAKE_POST_LINK += copy /Y \"$$TargetEmoji\" \"$$OutputDir\"

#    LIBS += -L$$PWD/../third/win/qtkeychain/lib -lqt5keychain
#}

#unix:CONFIG(debug, debug | release) {
#    # Linux 环境配置
#    TargetConfig = $$PWD/config.ini
#    TargetEmoji = $$PWD/emoji.json
#    OutputDir = $$PWD/bin

#    # 输出调试信息
#    message("TargetConfig: $$TargetConfig")
#    message("TargetEmoji: $$TargetEmoji")
#    message("OutputDir: $$OutputDir")

#    # 拷贝 config.ini 和 emoji.json 到输出目录
#    QMAKE_POST_LINK += mkdir -p $$OutputDir
#    QMAKE_POST_LINK += cp -f "$$TargetConfig" "$$OutputDir"
#    QMAKE_POST_LINK += cp -f "$$TargetEmoji" "$$OutputDir"

#    LIBS += -L$$PWD/../third/linux/qtkeychain/lib -lqt5keychain
#}

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    pic.qrc \
    qss.qrc
