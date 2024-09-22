#include "Animation.h"

#include <QDateTime>
#include <QDebug>

#include <cmath>

#define M_PI 3.14159265358979323846

Animation::Animation(QObject *parent)
    : QObject(parent)
    , mAnimationTime(0.0)
{
    connect(&mTimer, &QTimer::timeout, this, &Animation::Update);
}

void Animation::Update()
{
    mAnimationTime += TICK_INTERVAL_MS / 1000.0;

    double time = ANIMATION_SPEED * mAnimationTime;

    mData->SetSpeed(200 * sin(time) * sin(time));
    mData->SetThrottle(75 * std::abs(sin(4 * time)));
    mData->SetFuelTank(100 - 50 * sin(time));
    mData->SetTemperature(90 + 40 * sin(time));
}

void Animation::Init()
{
    mTimer.start(TICK_INTERVAL_MS);
}
