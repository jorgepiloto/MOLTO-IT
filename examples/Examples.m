%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   MOLTO-IT TEST CASES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Name of the Problem to be loaded
%
example   = 'Pluto';
spice_dir = '/Users/davidmorante/Desktop/MicePackage/';
%
%planets = [ {'1'}   % mercury
%            {'2'}   % venus
%            {'3'}   % earth
%            {'4'}   % mars
%            {'5'}   % jupiter
%            {'6'}   % saturno
%            {'7'}   % urano
%            {'8'}   % neptuno
%            {'9'}   % pluton

switch (example)
    %
    case'Ceres'

        input.problem_name = example;
        input.problem_type = 'rendezvous';
        input.planet_dep = 'Earth';
        input.planet_arr = '2000001'; %Ceres
        input.vinf0_max = 1.6;
        input.planet_fb = {'4'};
        input.rfb_min = 200;
        input.n_fb = [0, 1];
        input.rev = [0, 0];
        input.ToF = [100, 1000];
        input.Initial_Date = [{'2003 Jan 01 00:00:00'}, {'2003 Dec 31 00:00:00'}];
        input.init_file = [];
        input.output_file = [problem_name, '.txt'];
        input.plot = 0;
        input.useParallel = 'yes';
        input.options = [];
        input.maxGen = 200;
        input.popsize = 50;

    case'Jupiter'

        input.problem_name = example;
        input.problem_type = 'flyby';
        input.planet_dep = 'Earth';
        input.planet_arr = '5';
        input.vinf0_max = 2;
        input.planet_fb = [{'4'}, {'3'}, {'2'}, {'4'}, {'3'}, {'2'}];
        input.rfb_min = 200;
        input.n_fb = [0, 3];
        input.rev = [0, 0];
        input.ToF = [50, 50, 50, 50; ...
            500, 500, 500, 1000];
        input.Initial_Date = [{'2029 Jan 01 00:00:00'}, {'2030 Dec 31 00:00:00'}];
        input.init_file = [];
        input.output_file = [problem_name, '.txt'];
        input.plot = 0;
        input.useParallel = 'yes';
        input.options = [];
        input.maxGen = 200;
        input.popsize = 200;

    case'Pluto'

        input.problem_name = example;
        input.problem_type = 'rendezvous';
        input.planet_dep = 'Earth';
        input.planet_arr = '9';
        input.vinf0_max = 8.77;
        input.planet_fb = [{'2'}, {'3'}, {'4'}, {'5'}, {'6'}, {'7'}];
        input.planet_fb = [{'5'}];
        input.rfb_min = 200;
        input.n_fb = [1, 4];
        input.rev = [0, 1];
        input.ToF = [0, 9125];
        input.Initial_Date = [{'2028 Jan 01 00:00:00'}, {'2028 Dec 31 00:00:00'}];
        input.init_file = [];
        input.output_file = [problem_name, '.txt'];
        input.plot = 0;
        input.useParallel = 'yes';
        input.options = [];
        input.maxGen = 200;
        input.popsize = 200;
end
%
% PREPARE AND SAVE INPUT STRUCTURE
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
output = molto_it(input);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
