#include "DrivingData.h"

#include <cmath>

DrivingData::DrivingData(QObject *parent)
    : QObject{parent}
{}

DEFINE_SET_METHOD(DrivingData, double, Speed)
DEFINE_SET_METHOD(DrivingData, double, Throttle)
DEFINE_SET_METHOD(DrivingData, double, Temperature)
DEFINE_SET_METHOD(DrivingData, double, FuelTank)
