% 创建一个场景，生成一条在道路尽头有两个长为3的障碍物，且障碍物间隔为0.3的路
scenario2 = drivingScenario;
roadCenters = [0 0; 20 0];
rr = road(scenario2,roadCenters);
barrierCenters = [20 3; 20 0; 20 -3];
barrier(scenario2,barrierCenters,'SegmentGap',0.3)
plot(scenario2)