function bestOrder = polyOrderSelect(data, maxOrder, showPlot)
    
    % normalization
    bla = data(2, :);
    bla = (bla - mean(bla)) / (max(bla) - min(bla));
    data(2, :) = bla;
    
    warning off;
    data(2, :);
    orders = 0:maxOrder;
    t_RMSEs = zeros(1, maxOrder+1);
    v_RMSEs = zeros(1, maxOrder+1);
    for order = orders
        %LOOCV
        t_RMSEs_in = zeros(1, size(data, 2));
        v_RMSEs_in = zeros(1, size(data, 2));
        for leave = 1 : size(data, 2)
            x = data(1, :);
            y = data(2, :);
            x(leave) = [];
            y(leave) = [];
            
            theta = polyfit(x, y, order);
            E = polyval(theta, x) - y;
            SE = E.^2;
            MSE = mean(SE);
            RMSE = sqrt(MSE);
            t_RMSEs_in(leave) = RMSE;
            v_RMSEs_in(leave) = polyval(theta, data(1, leave)) - data(2, leave);
        end
        t_RMSEs(order+1) = mean(t_RMSEs_in);
        v_RMSEs(order+1) = sqrt(mean(v_RMSEs_in.^2));
    end
    
    if showPlot == 1
        plot(orders, t_RMSEs);
        hold on
        plot(orders, v_RMSEs);
    end
    [min_v_RMSE, orderIdx] = min(v_RMSEs);
    bestOrder = orders(orderIdx);
    plot(bestOrder, min_v_RMSE, 'o')
    legend('Training RMSE', 'Validating RMSE', 'Min. of validating RMSE');
end

