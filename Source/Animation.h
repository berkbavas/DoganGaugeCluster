#pragma once

#include "DrivingData.h"

#include <QObject>
#include <QTimer>

class Animation : public QObject
{
    Q_OBJECT
public:
    explicit Animation(QObject *parent = nullptr);

    void SetData(DrivingData *Data) { mData = Data; }

public slots:
    void Update();
    void Init();

private:
    QTimer mTimer;
    double mAnimationTime;
    DrivingData *mData{nullptr};

    static constexpr double TICK_INTERVAL_MS = 10.0;
    static constexpr double ANIMATION_SPEED = 0.5;
};
