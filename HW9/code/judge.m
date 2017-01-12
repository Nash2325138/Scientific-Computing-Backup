function win = judge()
%judge whether anyone has won
    global table;
    
    % fix two axis values, exam the line 
    for i = 1:4
        for j = 1:4
            [you, ai] = countLine(table(i, j ,:));
            if you == 4
                win = 1;
                return
            elseif ai == 4
                win = 2;
                return
            end
                
        end
    end
    
    for i = 1:4
        for k = 1:4
            [you, ai] = countLine(table(i, : ,k));
            if you == 4
                win = 1;
                return
            elseif ai == 4
                win = 2;
                return
            end
                
        end
    end
    
    for j = 1:4
        for k = 1:4
            [you, ai] = countLine(table(:, j ,k));
            if you == 4
                win = 1;
                return
            elseif ai == 4
                win = 2;
                return
            end
                
        end
    end
    
    % fix one axis value, exam the diagonal
    for i = 1:4
        line = zeros(4);
        
        for j = 1:4
            line(j) = table(i, j, j);
        end
        [you, ai] = countLine(line);
        if you == 4
            win = 1;
            return
        elseif ai == 4
            win = 2;
            return
        end
        for j = 1:4
            line(j) = table(i, j, 5-j);
        end
        [you, ai] = countLine(line);
        if you == 4
            win = 1;
            return
        elseif ai == 4
            win = 2;
            return
        end
        
        
        for j = 1:4
            line(j) = table(j, i, j);
        end
        [you, ai] = countLine(line);
        if you == 4
            win = 1;
            return
        elseif ai == 4
            win = 2;
            return
        end
        for j = 1:4
            line(j) = table(j, i, 5-j);
        end
        [you, ai] = countLine(line);
        if you == 4
            win = 1;
            return
        elseif ai == 4
            win = 2;
            return
        end
        
        
        for j = 1:4
            line(j) = table(j, j, i);
        end
        [you, ai] = countLine(line);
        if you == 4
            win = 1;
            return
        elseif ai == 4
            win = 2;
            return
        end
        for j = 1:4
            line(j) = table(j, 5-j, i);
        end
        [you, ai] = countLine(line);
        if you == 4
            win = 1;
            return
        elseif ai == 4
            win = 2;
            return
        end
        
    end
    
    % exam the diagonals with no fixed axis value 
    lines = [table(1,1,1), table(2,2,2), table(3,3,3), table(4,4,4);
             table(4,1,1), table(3,2,2), table(2,3,3), table(1,4,4);
             table(1,4,1), table(2,3,2), table(3,2,3), table(4,1,4);
             table(1,1,4), table(2,2,3), table(3,3,2), table(4,4,1)];
    for i = 1:4
        [you, ai] = countLine(lines(i, :));
        if you == 4
            win = 1;
            return
        elseif ai == 4
            win = 2;
            return
        end
    end
    win = 0;
    return
end

function [you, ai] = countLine(line)
%count the elements in a given 1x4 line
    you = 0;
    ai = 0;
    for i = 1:4
        if line(i) == 1
            you = you + 1;
        elseif line(i) == 2
            ai = ai + 1;
        end
    end
end
