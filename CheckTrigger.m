function CheckTrigger(app,scope)
% TimerFcn for the trig_timer in the main app
% Has to be placed outside the app
result=strrep(query(scope,'TRIGGER:STATE?'),' ','');
result=result(1:end-1);
if strcmp(result,'TRIGGER')
    app.TriggerLamp.Color = [0,1,0];
    data=str2num(query(scope,'CURVE?'));
    xstep=str2double(query(scope,'WFMPre:xincr?'));
    ystep=str2double(query(scope,'WFMPre:ymult?'));
    app.xstep = xstep;
    app.waveform = [(0:(length(data)-1))*xstep;data*ystep];
    app.DrawFigure;
else
    app.TriggerLamp.Color = [1,0,0];
end


end