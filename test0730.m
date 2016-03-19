% test0730

F = [0, 0.1044, 0.2940; 0.0368, 0, 1.1126; 0.2749, 2.3893, 0];
vector = [1 1 1]';
value = [];
while norm(vector)<1e10
    vector = F*vector;
    value = [value; vector'];
end