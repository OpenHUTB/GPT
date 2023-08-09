% 创建一个驾驶场景。指定道路中心和车道数，增加一条从上到下的54米双向双车道直路。
scenario = drivingScenario('StopTime',10);
roadCenters = [50 0; -4 0];
numLanes = [1 1];
ls = lanespec(numLanes);
road(scenario,roadCenters,'Lanes',ls)
plot(scenario)