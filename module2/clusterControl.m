function [ clusterCon ] = clusterControl( Amatrix, Bmatrix )
%CLUSTERCONTROL creates a matrix, which can shows that which
% driver nodes infulence the node and that how many derives needed to
% apperances the change on the state. In i. row, the j. column shows how
% many derives need to appeare the information of driver j. on state i.
% ##################
% Example:
% ##################
% Inputs: 
%
% Amatrix=[0 0 0 0; 1 0 0 0; 0 1 0 0; 1 0 0 0]; % could be sparse
% Bmatrix=[1 0; 0 0; 0 0; 0 1];                 % could be sparse
% ##################
% Function Calling:
%
% clusterCon=clusterControl(Amatrix, Bmatrix)
% ##################
% Output:
%
% clusterCon =
% 
%      1     0     0     0
%      2     0     0     0
%      3     0     0     0
%      2     0     0     1
% ##################
%  The algorithm was implemented by Daniel Leitold 
   
   % determine the non-driver nodes
   nonDriverNodes=sum(Bmatrix,2)==0;
   
   % generate the shortest paths
   clusterCon=allShortestPaths(Amatrix)+1;
   clusterCon(clusterCon==Inf)=0;
   
   % finalize the output matrix
   clusterCon(:,nonDriverNodes)=0;
end


