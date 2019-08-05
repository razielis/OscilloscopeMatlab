function MoveEdge(app,step)
if app.key_direction == 1
    if app.edge_key
        if app.edge2 <= app.waveform(1,length(app.waveform(1,:)))- step
            app.edge2 = app.edge2 + app.key_direction * app.xstep * step;
            app.DrawFigure;
        end
    else
        if app.edge1 <= app.waveform(1,length(app.waveform(1,:))) - step
            app.edge1 = app.edge1 + app.key_direction * app.xstep * step;
            app.DrawFigure;
        end
    end
elseif app.key_direction == -1
    if app.edge_key
        if app.waveform(1,1) < app.edge2 - step
            app.edge2 = app.edge2 + app.key_direction * app.xstep * step;
            app.DrawFigure;
        end
    else
        if app.waveform(1,1) < app.edge1 - step
            app.edge1 = app.edge1 + app.key_direction * app.xstep * step;
            app.DrawFigure;
        end
    end
    app.DrawFigure;
end



end