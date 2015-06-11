function [ matrix_distances_stations, matrix_distances_bases ] = create_distances

% matrix_distances_stations = [
%     0  11.0  12.6 9.4  8.2  11.4 13.0 13.0 8.6  11.4 2.8  8.6;
%     11.0 0   13.9 5.8  15.3 7.3  2.2  17.0 9.2  3.0  13.2 9.2;
%     12.6 13.9 0  17.5 7.2  7.1  14.2 4.1  19.0 11.4 15.2 5.1;
%     9.4 5.8 17.5   0   16.4 12.0 7.8  19.7 3.6  8.5  10.4 12.4;
%     8.2 15.3 7.2 12.0  0   11.0 16.6 5.4  16.6 13.9 10.0 7.1;
%     11.4 7.3 7.1 12.0 11.0   0   7.2  10.8 14.6 4.5  14.2 4.0;
%     13.0 2.2 14.2 7.8 16.6 7.2    0   17.7 11.3 2.8  15.3 10.0;
%     13.0 17.0 4.1 19.7 5.4 10.8 17.7  0   20.6 14.9 15.1 7.8;
%     8.6 9.2 19.0 3.6 16.6 14.6 11.3 20.6    0   11.7 8.6  14.0;
%     11.4 3.0 11.4 8.5 13.9 4.5 2.8 14.9 11.7     0   13.9 7.2;
%     2.8 13.2 15.2 10.4 10.0 14.2 15.3 15.1 8.6 13.9   0   11.4;
%     8.6 9.2 5.1 12.4 7.1 4.0 10.0 7.8 14.0 7.2 11.4        0  ;
%     ];
% matrix_distances_bases = [
%     7.0  4.0 12.4 5.1 12.0 7.3 6.1 14.8 7.3 5.0 9.2 7.3;
% ];

%%
%var1 = 25
    
    %figure
    %hold on 
    
    base1 = [23 21];
    base2 = [17 4];
    base3 = [10 15];
    
    x = [16,2,6,15,13,19,18,20,14,21,12,25,1,22,4,5,11,24,10,7,3,8,17,9];
    y = [7,22,5,12,11,1,16,19,4,6,3,18,8,25,15,24,10,23,20,9,13,17,14,2];
    
    %scatter(base1(1),base1(2),'filled');
    %scatter(base2(1),base2(2),'filled');
    %scatter(base3(1),base3(2),'filled');
    %scatter(x,y,'filled');
    
    %hold off
    
    distances_stations = from_coordinates_to_distances(x,y);
    matrix_distances_stations = distances_stations;
    
    distances_base1 = from_coordinates_to_distances([base1(1),x],[base1(2),y]);
    distances_base2 = from_coordinates_to_distances([base2(1),x],[base2(2) y]);
    distances_base3 = from_coordinates_to_distances([base3(1),x],[base3(2) y]);
    matrix_distances_bases = [ 
        distances_base1(1,2:end);
        distances_base2(1,2:end);
        distances_base3(1,2:end)];
%%    
%var2 = 50
%     x = [46 17 8 15 23 5 3 45 39 1 18 34 26 48 16 38 9 2 41 7 31 32 40 36 ...
%          27 12 47 33 22 37 44 13 29 19 20 10 35 43 42 11 25 30 21 4 14 24 6 49 50 28];
%     y = [7 30 36 40 50 23 49 20 24 4 6 25 29 32 13 8 22 5 47 35 27 12 41 14 ...
%          21 31 11 17 48 42 10 19 45 37 26 43 28 9 44 46 3 18 15 16 2 38 34 1 33 39];
%     distances = from_coordinates_to_distances(x,y);
%     
%     matrix_distances_stations = distances(2:end,2:end);
%     matrix_distances_bases = distances(1,2:end);
end

