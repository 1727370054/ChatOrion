#ifndef APPLY_FRIEND_PAGE_H
#define APPLY_FRIEND_PAGE_H

#include <QWidget>

#include "user_data.h"

namespace Ui {
class ApplyFriendPage;
}

class ApplyFriendItem;

/**
 * @brief 好友申请页
 */
class ApplyFriendPage : public QWidget
{
    Q_OBJECT

public:
    explicit ApplyFriendPage(QWidget *parent = nullptr);
    ~ApplyFriendPage();
    void AddNewApply(std::shared_ptr<AddFriendApply> apply);
protected:
    void paintEvent(QPaintEvent *event);
private:
    void loadApplyList();
    Ui::ApplyFriendPage *ui;
    std::unordered_map<int, ApplyFriendItem*> _unauth_items;
signals:
    void sig_show_search(bool);

    /**
     * @brief 存在新的请求消息
     */
    void sig_presence_apply(int new_apply_count);
};

#endif // APPLY_FRIEND_PAGE_H
