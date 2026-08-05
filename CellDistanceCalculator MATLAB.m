%%Cell Distance Calculator%%

%Follow Instructions in Protocol%

X = 477.650;
Y = 688.015;
%Input X,Y coordinates of a single spheroid centroid from Day 2. 
%Data must only have cells you think are from spheroid of interest.

%Drag and drop excel file into the workspace. Import as numeric matrix. 

CellDistanceMatrix = zeros(length(B546Area), 2);
%Initialize output matrix the length of data matrix with two columns.
maximum = length(CellDistanceMatrix);
for i = 1:maximum
    CellDistanceMatrix(i, 1) = i;
    CellDistanceMatrix(i, 2) = sqrt((B546Area(i, 3)-X)^2+(B546Area(i, 4)-Y)^2);
end
%Populates output matrix with distance for every cell.
%Change the name of the file the data is sourced from.

Data = CellDistanceMatrix(:,2);
Max = max(Data);
Avg = mean(Data);
StdDev = std(Data);
Min = min(Data);
%Calculates statistics of interest.

disp(['Maximum distance: ', num2str(Max)]);
disp(['Mean distance: ', num2str(Avg)]);
disp(['Minimum distance: ', num2str(Min)]);
disp(['Standard deviation: ', num2str(StdDev)]);
%Displays said statistics of interest.

%%Cell Distance Calculator%%