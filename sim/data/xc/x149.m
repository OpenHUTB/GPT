% 创建一个驾驶场景。该场景包含一条90米长的笔直道路、一辆自我车辆和两辆目标车辆
roadCenters = [0 0 0; 90 0 0];
laneSpecification = lanespec([1 1]);
road(scenario,roadCenters,'Lanes',laneSpecification,'Name','Road');

egoVehicle = vehicle(scenario, ...
    'ClassID',1, ...
    'Position',[4 -2 0], ...
    'Name','Ego');

vehicle(scenario, ...
    'ClassID',1, ...
    'Position',[45 -1.7 0], ...
    'Name','Near Target');

vehicle(scenario, ...
    'ClassID',1, ...
    'Position',[65 2 0], ...
    'Yaw',-180, ...
    'Name','Far Target');

plot(scenario)