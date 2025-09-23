% Load the dataset
data_set = readtable('C:\Users\hp\Desktop\GROUP 5 assignment 1\life.xlsx','VariableNamingRule', 'preserve'); 

%group similar years.
years = unique(data_set.Year); 

% Create empty struct(to store yearly tables) and loop through years
data_each_year = struct();  

for i = 1:length(years)
    yr = years(i); % current year
    
    % Extract rows for this year
    yearly_data = data_set(data_set.Year == yr, :);
    
    % Create dynamic struct field. It wont be visible
    field_name = ['Year', num2str(yr)];
    data_each_year.(field_name) = yearly_data;
    
    % Write each year's table to a separate sheet in Excel
    sheet_name = num2str(yr);  
    writetable(yearly_data, 'life.xlsx', 'Sheet', sheet_name);
end

disp('Data has been grouped and written to life.xlsx')