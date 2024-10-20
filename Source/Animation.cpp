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

    mData->SetSpeed(200 * std::abs(std::sin(0.5 * time)));
    mData->SetThrottle(80 * std::abs(std::sin(2 * time)));
    mData->SetFuelTank(100 * std::abs(std::sin(0.25 * time)));
    mData->SetTemperature(90 + 40 * std::abs(std::sin(0.75 * time)));
}

void Animation::Init()
{
    mTimer.start(TICK_INTERVAL_MS);
}
