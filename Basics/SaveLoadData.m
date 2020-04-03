data = rand(7,4)*10;
transpose = data';
x = 3:2:9;
y = linspace(0,1,5);
z = zeros(3,2);
a = ones(2,3);

% While save it will not append it will remove all predefined values in .mat file

% save datafile.mat will save all the variables of workspace only
% it donot save predefined values
save alldatafile;

% we can tell it to save only specific variables values
save datafile data transpose;


% While load it will overwrite if same name occurs and other variables
% remain same

% load datafile.mat will define all the data values stored in .mat into workspace
load datafile;
load('datafile.mat')

%we can tell it to load specific data values
load alldatafile x y z a;


