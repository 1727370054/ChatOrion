#ifndef PICTUREBUBBLE_H
#define PICTUREBUBBLE_H

#include "bubble_frame.h"
#include <QHBoxLayout>
#include <QPixmap>

/**
 * @brief 图片气泡
 */
class PictureBubble : public BubbleFrame
{
    Q_OBJECT
public:
    PictureBubble(const QPixmap &picture, ChatRole role, QWidget *parent = nullptr);
};

#endif // PICTUREBUBBLE_H
