%道路中心坐标[-60 60 0; -80 -5 0; -30 30 0; -10 40 0; 0 0 0; -20 -20 0]
scenario = drivingScenario;
roadCenters = [-60 60 0; -80 -5 0; -30 30 0; -10 40 0; 0 0 0; -20 -20 0];

%建立道路
%分界线线型 全部都是实线  
marking = [laneMarking('Solid') ...
    laneMarking('Solid') laneMarking('Solid') laneMarking('Solid')];
%道路规范 3条车道+分界线线型
laneSpecification = lanespec(3, "marking", marking);
%生成道路
road(scenario, roadCenters, 'Lanes', laneSpecification);

% 展示场景
plot(scenario);