#include "DrivingData.h"

#include <cmath>

DrivingData::DrivingData(QObject *parent)
    : QObject{parent}
{
    SetHeadlight(false);
    SetCaution(false);
    SetLamp(false);
    SetWiper(false);

    SetBattery(false);
    SetOilcup(false);
    SetShelterBelt(false);
    SetAbs(false);
}

DEFINE_SET_METHOD(DrivingData, double, Speed)
DEFINE_SET_METHOD(DrivingData, double, Throttle)
DEFINE_SET_METHOD(DrivingData, double, Temperature)
DEFINE_SET_METHOD(DrivingData, double, FuelTank)

DEFINE_SET_METHOD_FOR_BOOL(DrivingData, Headlight)
DEFINE_SET_METHOD_FOR_BOOL(DrivingData, Caution)
DEFINE_SET_METHOD_FOR_BOOL(DrivingData, Lamp)
DEFINE_SET_METHOD_FOR_BOOL(DrivingData, Wiper)

DEFINE_SET_METHOD_FOR_BOOL(DrivingData, Battery)
DEFINE_SET_METHOD_FOR_BOOL(DrivingData, Oilcup)
DEFINE_SET_METHOD_FOR_BOOL(DrivingData, ShelterBelt)
DEFINE_SET_METHOD_FOR_BOOL(DrivingData, Abs)
