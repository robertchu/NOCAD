function [ mesConfig ] = getConfig( )
%DATAGENERATOR is set up the measures which will be generated. If the
% value of the measure is 1 then it is generated, if the value is 0 then it
% is not generated.
%  The algorithm was implemented by Daniel Leitold 


    mesConfig=struct(...
                    'A',{1},...   % system - properties
                    'B',{1},...
                    'C',{1},...
                    'D',{1},...
          'effectGraph',{1},...
                'Graph',{1},...
         'controllable',{1},...   % system - measures
           'observable',{1},...
           'numOfNodes',{1},...
           'numOfEdges',{1},...
              'density',{1},...
             'diameter',{1},...
        'degreeFreeman',{1},...
       'degreeVariance',{1},...
       'degreeRelative',{1},...
             'pearsonR',{1},...
      'percentLoopsSym',{1},...
             'degreeIn',{1},...   % node - centrality 
            'degreeOut',{1},...
               'degree',{1},...
          'degreeScott',{1},...
            'closeness',{1},...
         'betweennessN',{1},...
             'pageRank',{1},...
               'correl',{1},...
              'control',{1},...
              'observe',{1},...
          'driverNodes',{1},...    % node - cluster
          'driverTypes',{1},...
          'sensorNodes',{1},...
          'sensorTypes',{1},...
          'controlling',{1},...
            'observing',{1},...
     'driverSimilarity',{1},...
     'sensorSimilarity',{1},...
               'reachC',{1},...
               'reachO',{1},...
         'betweennessE',{1},...    % edges
           'similarity',{1},...
          'endpointSim',{1}...
   );

        
end

