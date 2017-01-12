function [] = drawCube(i, j, k, who)
% draw a cube on the fugure at (i, j, k)
    global f;
    figure(f)
    hold on
    if who == 1
        cube([i+0.2,j+0.2,k+0.2], [0.6,0.6,0.6], 15)
    elseif who == 2
        cube([i+0.2,j+0.2,k+0.2], [0.6,0.6,0.6], 90)
    end
end

