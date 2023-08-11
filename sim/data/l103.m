% 创建含有两条双向车道的90米道路，车道宽为默认值
scenario = drivingScenario('SampleTime',0.1','StopTime',60);
roadCenters = [0 1 0; 60 1 0];
laneSpecification = lanespec([1 1]);
road(scenario,roadCenters,'Lanes',laneSpecification);
plot(scenario)