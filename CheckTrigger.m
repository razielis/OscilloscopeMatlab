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
    plot(app.UIAxes,(0:2499)*xstep,data*ystep);
    app.CountEditField.Value =app.CountEditField.Value +1;
else
    app.TriggerLamp.Color = [1,0,0];
end


end