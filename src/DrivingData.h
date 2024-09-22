#ifndef DRIVINGDATA_H
#define DRIVINGDATA_H

#include <QObject>

#include "Macros.h"

class DrivingData : public QObject
{
    Q_OBJECT
public:
    explicit DrivingData(QObject *parent = nullptr);

signals:
    void SpeedChanged();
    void ThrottleChanged();
    void TemperatureChanged();
    void FuelTankChanged();

    DECLARE_MEMBER(double, Speed);
    DECLARE_MEMBER(double, Throttle);
    DECLARE_MEMBER(double, Temperature);
    DECLARE_MEMBER(double, FuelTank);

    Q_PROPERTY(double speed READ GetSpeed NOTIFY SpeedChanged)
    Q_PROPERTY(double throttle READ GetThrottle NOTIFY ThrottleChanged)
    Q_PROPERTY(double temperature READ GetTemperature NOTIFY TemperatureChanged)
    Q_PROPERTY(double fuelTank READ GetFuelTank NOTIFY FuelTankChanged)
};

#endif // DRIVINGDATA_H
