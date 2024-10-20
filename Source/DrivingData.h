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

    void HeadlightChanged();
    void CautionChanged();
    void LampChanged();
    void WiperChanged();

    void BatteryChanged();
    void OilcupChanged();
    void ShelterBeltChanged();
    void AbsChanged();

    DECLARE_MEMBER(double, Speed);
    DECLARE_MEMBER(double, Throttle);
    DECLARE_MEMBER(double, Temperature);
    DECLARE_MEMBER(double, FuelTank);

    // Left indicator panel
    DECLARE_MEMBER(bool, Headlight);
    DECLARE_MEMBER(bool, Caution);
    DECLARE_MEMBER(bool, Lamp);
    DECLARE_MEMBER(bool, Wiper);

    // Right indicator panel
    DECLARE_MEMBER(bool, Battery);
    DECLARE_MEMBER(bool, Oilcup);
    DECLARE_MEMBER(bool, ShelterBelt);
    DECLARE_MEMBER(bool, Abs);

    Q_PROPERTY(double speed READ GetSpeed NOTIFY SpeedChanged)
    Q_PROPERTY(double throttle READ GetThrottle NOTIFY ThrottleChanged)
    Q_PROPERTY(double temperature READ GetTemperature NOTIFY TemperatureChanged)
    Q_PROPERTY(double fuelTank READ GetFuelTank NOTIFY FuelTankChanged)

    Q_PROPERTY(bool headlight READ GetHeadlight NOTIFY HeadlightChanged)
    Q_PROPERTY(bool caution READ GetCaution NOTIFY CautionChanged)
    Q_PROPERTY(bool lamp READ GetLamp NOTIFY LampChanged)
    Q_PROPERTY(bool wiper READ GetWiper NOTIFY WiperChanged)

    Q_PROPERTY(bool battery READ GetBattery NOTIFY BatteryChanged)
    Q_PROPERTY(bool oilcup READ GetOilcup NOTIFY OilcupChanged)
    Q_PROPERTY(bool shelterBelt READ GetTemperature NOTIFY TemperatureChanged)
    Q_PROPERTY(bool abs READ GetAbs NOTIFY AbsChanged)
};

#endif // DRIVINGDATA_H
