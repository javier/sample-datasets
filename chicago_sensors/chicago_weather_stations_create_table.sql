CREATE TABLE IF NOT EXISTS chicago_weather_stations (
    MeasurementTimestamp TIMESTAMP,
    StationName SYMBOL,
    AirTemperature DOUBLE,
    WetBulbTemperature DOUBLE,
    Humidity INT,
    RainIntensity DOUBLE,
    IntervalRain DOUBLE,
    TotalRain DOUBLE,
    PrecipitationType INT,
    WindDirection INT,
    WindSpeed DOUBLE,
    MaximumWindSpeed DOUBLE,
    BarometricPressure DOUBLE,
    SolarRadiation INT,
    Heading INT,
    BatteryLife DOUBLE,
    MeasurementTimestampLabel VARCHAR,
    MeasurementID VARCHAR
) timestamp(MeasurementTimestamp) PARTITION BY MONTH WAL
DEDUP UPSERT KEYS(MeasurementTimestamp, StationName);
