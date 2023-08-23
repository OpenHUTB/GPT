% 生成一段减少一个车道的道路,总共9辆轿车和卡车,轿车坐标是(-58.5,-2,0) (-40.5,-1.96,0) (-22.2,-1.9,0) (-13.7,1.7,0) ,卡车坐标是(-49.5,-2.03,0) (-40.5,1.87,0) (-22.2,1.9,0) (-4.75,1.83,0) (-4.75,-1.85,0) 
scenario = drivingScenario;
roadCenters = [29 1.9 0;
    60 1.9 0];
laneSpecification = lanespec([2 1]);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [0 0 0;
    30 0 0];
laneSpecification = lanespec([2 2]);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

roadCenters = [-60 0 0;
    1 0 0];
laneSpecification = lanespec([2 2]);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

%生成汽车
vehicle(scenario,'ClassID', 1,'Position', [-58.5 -2 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-49.5 -2.03 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-40.5 1.87 0]);
vehicle(scenario,'ClassID', 1,'Position', [-40.5 -1.96 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-22.2 1.9 0]);
vehicle(scenario,'ClassID', 1,'Position', [-22.2 -1.9 0]);
vehicle(scenario,'ClassID', 1,'Position', [-13.7 1.7 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-4.75 1.83 0]);
vehicle(scenario,'ClassID', 2,'Height', 3.5,'Position', [-4.75 -1.85 0]);