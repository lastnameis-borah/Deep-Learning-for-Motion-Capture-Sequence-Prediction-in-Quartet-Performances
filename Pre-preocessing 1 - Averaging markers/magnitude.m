function C = magnitude(A, B, C)

    % Iterate through each element
    for i = 1:numel(A)
        values = [A(i), B(i), C(i)];
        validValues = values(~isnan(values));
       
        % Calculate average for valid values
        if ~isempty(validValues)
            output(i) = sum(validValues) / numel(validValues);
        end
    end
   
    C = output;
end


