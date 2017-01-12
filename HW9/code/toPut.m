function [next] = toPut( line )
%give this function a 1x4 line, tell wether to put next to make AI's winning/prevent user's winning
%used a lot in AInext()
            count = 0;
            win = 0;
            empty = 0;
            for i = 1:4
                if line(i) == 1
                    count = count + 1;
                elseif line(i) == 2
                    win = win + 1;
                else
                    empty = empty + 1;
                end
            end
            if win == 3 && empty == 1
                for i = 1:4
                    if line(i) == 0
                        next = i;
                        return
                    end
                end
            end
            if count == 3 && empty == 1
                for i = 1:4
                    if line(i) == 0
                        next = i;
                        return
                    end
                end
            end
            next = -1;
end

