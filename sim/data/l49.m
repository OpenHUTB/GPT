% 创建含有两条单向车道的道路，车道宽为默认值，车道线标记为实线,实线宽度为0.7
scenario = drivingScenario;
roadCenters = [0 1 0; 53 1 0];
laneSpecification = lanespec(2,"marking",[laneMarking('Solid','Width',0.7)]);
road(scenario,roadCenters,'Lanes',laneSpecification);
plot(scenario)