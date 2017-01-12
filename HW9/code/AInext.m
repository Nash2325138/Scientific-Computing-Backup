function [x, y, z] = AInext()
%determine where the AI will put
    global table;
    
    % the method is pretty like function judge, if there's a line/diagonal
    % going to 4 in a row put on the last one to make AI's winning /
    % prevent user's winning
    for i = 1:4
        for j = 1:4
            line = table(i, j, :);
            k = toPut(line);
            if k ~= -1
                x = i;
                y = j;
                z = k;
                return
            end
        end
    end
    
    
    for i = 1:4
        for k = 1:4
            line = table(i, :, k);
            j = toPut(line);
            if j ~= -1
                x = i;
                y = j;
                z = k;
                return
            end
        end
    end
    
    for j = 1:4
        for k = 1:4
            line = table(:, j, k);
            i = toPut(line);
            if i ~= -1
                x = i;
                y = j;
                z = k;
                return
            end
        end
    end
    
    for i = 1:4
        line = zeros(4);
        
        for j = 1:4
            line(j) = table(i, j, j);
        end
        k = toPut(line);
        if k ~= -1
            x=i ; y=k ; z=k;return
        end
        for j = 1:4
            line(j) = table(i, j, 5-j);
        end
        k = toPut(line);
        if k ~= -1
            x=i ; y=k ; z=5-k;return
        end
        
        
        for j = 1:4
            line(j) = table(j, i, j);
        end
        k = toPut(line);
        if k ~= -1
            x=k ; y=i ; z=k;return
        end
        for j = 1:4
            line(j) = table(j, i, 5-j);
        end
        k = toPut(line);
        if k ~= -1
            x=k ; y=i ; z=5-k;return
        end
        
        
        for j = 1:4
            line(j) = table(j, j, i);
        end
        k = toPut(line);
        if k ~= -1
            x=k ; y=k ; z=i;return
        end
        for j = 1:4
            line(j) = table(j, 5-j, i);
        end
        k = toPut(line);
        if k ~= -1
            x=k ; y=5-k ; z=i;return
        end
        
    end
   
    lines = [table(1,1,1), table(2,2,2), table(3,3,3), table(4,4,4);
             table(4,1,1), table(3,2,2), table(2,3,3), table(1,4,4);
             table(1,4,1), table(2,3,2), table(3,2,3), table(4,1,4);
             table(1,1,4), table(2,2,3), table(3,3,2), table(4,4,1)];
    k = toPut(lines(1, :));
    if k ~= -1
        x=k;
        y=k;
        z=k;
        return
    end
    k = toPut(lines(2, :));
    if k ~= -1
        x=5-k;
        y=k;
        z=k;
        return
    end
    k = toPut(lines(3, :));
    if k ~= -1
        x=k;
        y=5-k;
        z=k;
        return
    end
    k = toPut(lines(4, :));
    if k ~= -1
        x=k;
        y=k;
        z=5-k;
        return
    end
    
    
    
    v = [];
    for i = 1:4
        for j = 1:4
            for k = 1:4
                if table(i,j,k) == 0
                    v = [v; i, j, k];
                end
            end
        end
    end
   
    s = size(v);
    choose = randi(s(1));
    x = v(choose, 1);
    y = v(choose, 2);
    z = v(choose, 3);
    
end

