# Boris Bikes

Business logic for the Santander/Boris bikes, a popular bike rental service in London.

This exercise was completed as part of Week 1 at Makers.

## Get started
Clone this repo:
```
https://github.com/nikimanoledaki/boris_bikes.git
```

## How to use
```
irb -r ./lib/bike.rb
bike = Bike.new
bike.report_broken // try docking and releasing a broken bike!
require './lib/docking_station.rb'
station = DockingStation.new
station.dock(bike)
station.release_bike
```

## How to test
```
rspec
```
