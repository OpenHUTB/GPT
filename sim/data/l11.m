% 创建一条25米长的直道，在一个方向上有两条车道
scenario = drivingScenario('StopTime',3);
lm = [laneMarking('Solid')
      laneMarking('Dashed','Length',2,'Space',4)
      laneMarking('Solid')];
l = lanespec(2,'Marking',lm);
road(scenario,[0 0 0; 25 0 0],'Lanes',l);
plot(scenario)