function valid = put(color, x, y, z)
global table;
%put and exam if it is a valid position
    if (x > 4 || x < 1 || y > 4 || y < 1 || z > 4 || z < 1 || table(x,y,z)) ~= 0
        valid = false;
        return
    end
    table(x,y,z) = color;
    valid = true;
end

