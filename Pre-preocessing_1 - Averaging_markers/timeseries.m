% Read the data
RawData = mcread('Quartet_Hydn_L1_DP_Rep1.mat');
RawData;

% Create new Struct with only with 'marker name' and 'data'
RawDataMod.MarkerName = RawData.markerName;
RawDataMod.Data = RawData.data;

% plot(RawDataMod.Data(:,13),'r')
% hold on
% plot(RawDataMod.Data(:,14),'g')
% plot(RawDataMod.Data(:,15),'b')


n = RawData.nFrames; % Total frames


%%%%%%%%%%%%% CELLO %%%%%%%%%%%%%%

% Create new Table for each marker of Cello
mag_cello_b1 = table([], 'VariableNames', {'mag_cello_b1'});
mag_cello_b2 = table([], 'VariableNames', {'mag_cello_b2'});
mag_cello_b3 = table([], 'VariableNames', {'mag_cello_b3'});

% Define the axes from the raw data
cello_b(1).x = RawDataMod.Data(:,13);
cello_b(1).y = RawDataMod.Data(:,14);
cello_b(1).z = RawDataMod.Data(:,15);

cello_b(2).x = RawDataMod.Data(:,16);
cello_b(2).y = RawDataMod.Data(:,17);
cello_b(2).z = RawDataMod.Data(:,18);

cello_b(3).x = RawDataMod.Data(:,19);
cello_b(3).y = RawDataMod.Data(:,20);
cello_b(3).z = RawDataMod.Data(:,21);

% Loop through all the frames
for j = 1:n
    cello_b(1).all = [cello_b(1).x.^2, cello_b(1).y.^2, cello_b(1).z.^2];
    magnitude = sqrt(sum(cello_b(1).all(j,:)));
    mag_cello_b1.mag_cello_b1(end+1) = magnitude;
end

for j = 1:n
    cello_b(2).all = [cello_b(2).x.^2, cello_b(2).y.^2, cello_b(2).z.^2];
    magnitude = sqrt(sum(cello_b(2).all(j,:)));
    mag_cello_b2.mag_cello_b2(end+1) = magnitude;
end

for j = 1:n
    cello_b(3).all = [cello_b(3).x.^2, cello_b(3).y.^2, cello_b(3).z.^2];
    magnitude = sqrt(sum(cello_b(3).all(j,:)));
    mag_cello_b3.mag_cello_b3(end+1) = magnitude;
end

% Combine all the markers for Cello
cello = [mag_cello_b1, mag_cello_b2, mag_cello_b3];



%%%%%%%%%%%%% VIOLA %%%%%%%%%%%%%%

% Create new Table for each marker of Viola
mag_viola_b1 = table([], 'VariableNames', {'mag_viola_b1'});
mag_viola_b2 = table([], 'VariableNames', {'mag_viola_b2'});
mag_viola_b3 = table([], 'VariableNames', {'mag_viola_b3'});

% Define the axes from the raw data
viola_b(1).x = RawDataMod.Data(:,31);
viola_b(1).y = RawDataMod.Data(:,32);
viola_b(1).z = RawDataMod.Data(:,33);

viola_b(2).x = RawDataMod.Data(:,34);
viola_b(2).y = RawDataMod.Data(:,35);
viola_b(2).z = RawDataMod.Data(:,36);

viola_b(3).x = RawDataMod.Data(:,37);
viola_b(3).y = RawDataMod.Data(:,38);
viola_b(3).z = RawDataMod.Data(:,39);

% Loop through all the frames
for j = 1:n
    viola_b(1).all = [viola_b(1).x.^2, viola_b(1).y.^2, viola_b(1).z.^2];
    magnitude = sqrt(sum(viola_b(1).all(j,:)));
    mag_viola_b1.mag_viola_b1(end+1) = magnitude;
end

for j = 1:n
    viola_b(2).all = [viola_b(2).x.^2, viola_b(2).y.^2, viola_b(2).z.^2];
    magnitude = sqrt(sum(viola_b(2).all(j,:)));
    mag_viola_b2.mag_viola_b2(end+1) = magnitude;
end

for j = 1:n
    viola_b(3).all = [viola_b(3).x.^2, viola_b(3).y.^2, viola_b(3).z.^2];
    magnitude = sqrt(sum(viola_b(3).all(j,:)));
    mag_viola_b3.mag_viola_b3(end+1) = magnitude;
end

% Combine all the markers for Viola
viola = [mag_viola_b1, mag_viola_b2, mag_viola_b3];



%%%%%%%%%%%%% Violin 2 %%%%%%%%%%%%%%

% Create new Table for each marker of Violin 2
mag_v2_b1 = table([], 'VariableNames', {'mag_v2_b1'});
mag_v2_b2 = table([], 'VariableNames', {'mag_v2_b2'});
mag_v2_b3 = table([], 'VariableNames', {'mag_v2_b3'});

% Define the axes from the raw data
v2_b(1).x = RawDataMod.Data(:,49);
v2_b(1).y = RawDataMod.Data(:,50);
v2_b(1).z = RawDataMod.Data(:,51);

v2_b(2).x = RawDataMod.Data(:,52);
v2_b(2).y = RawDataMod.Data(:,53);
v2_b(2).z = RawDataMod.Data(:,54);

v2_b(3).x = RawDataMod.Data(:,55);
v2_b(3).y = RawDataMod.Data(:,56);
v2_b(3).z = RawDataMod.Data(:,57);

% Loop through all the frames
for j = 1:n
    v2_b(1).all = [v2_b(1).x.^2, v2_b(1).y.^2, v2_b(1).z.^2];
    magnitude = sqrt(sum(v2_b(1).all(j,:)));
    mag_v2_b1.mag_v2_b1(end+1) = magnitude;
end

for j = 1:n
    v2_b(2).all = [v2_b(2).x.^2, v2_b(2).y.^2, v2_b(2).z.^2];
    magnitude = sqrt(sum(v2_b(2).all(j,:)));
    mag_v2_b2.mag_v2_b2(end+1) = magnitude;
end

for j = 1:n
    v2_b(3).all = [v2_b(3).x.^2, v2_b(3).y.^2, v2_b(3).z.^2];
    magnitude = sqrt(sum(v2_b(3).all(j,:)));
    mag_v2_b3.mag_v2_b3(end+1) = magnitude;
end

% Combine all the markers for Violin 2
violin_2 = [mag_v2_b1, mag_v2_b2, mag_v2_b3];



%%%%%%%%%%%%% Violin 1 %%%%%%%%%%%%%%

% Create new Table for each marker of Violin 1
mag_v1_b1 = table([], 'VariableNames', {'mag_v1_b1'});

% Define the axes from the raw data
v1_b(1).x = RawDataMod.Data(:,67);
v1_b(1).y = RawDataMod.Data(:,68);
v1_b(1).z = RawDataMod.Data(:,69);

% Loop through all the frames
for j = 1:n
    v1_b(1).all = [v1_b(1).x.^2, v2_b(1).y.^2, v2_b(1).z.^2];
    magnitude = sqrt(sum(v2_b(1).all(j,:)));
    mag_v1_b1.mag_v1_b1(end+1) = magnitude;
end

% Combine all the markers for Violin 1
violin_1 = mag_v1_b1;
violin_1.Properties.VariableNames{'mag_v1_b1'} = 'Var1';

% Average between three markers
ave_cello = timeseries_gpt4(cello.mag_cello_b1, cello.mag_cello_b2, cello.mag_cello_b3);
ave_viola = timeseries_gpt4(viola.mag_viola_b1, viola.mag_viola_b2, viola.mag_viola_b3);
ave_violin_2 = timeseries_gpt4(violin_2.mag_v2_b1, violin_2.mag_v2_b2, violin_2.mag_v2_b3);
ave_violin_1 = violin_1;


% Replace 0s with NaNs in the average
ave_cello(ave_cello == 0) = NaN;
ave_cello = table(ave_cello');

ave_viola(ave_viola == 0) = NaN;
ave_viola = table(ave_viola');

ave_violin_2(ave_violin_2 == 0) = NaN;
ave_violin_2 = table(ave_violin_2');

% ave_violin_1(ave_violin_1 == 0) = NaN;
% ave_violin_1 = table(ave_violin_1');

writetable(ave_cello, 'deadpan_cello_1.csv');
writetable(ave_viola, 'deadpan_viola_1.csv');
writetable(ave_violin_2, 'deadpan_v2_1.csv');
writetable(ave_violin_1, 'deadpan_v1_1.csv');


% Plot the graph
% plot(ave_cello.Var1, 'r');
% hold on
% plot(ave_viola.Var1, 'g');
% plot(ave_violin_2.Var1, 'b');
% plot(ave_violin_1.mag_v1_b1, 'k');
