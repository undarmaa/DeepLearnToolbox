function spec = specificity(confusion)
%% specificity calculates specificity
% http://bioinformatics.oxfordjournals.org/content/16/5/412.full.pdf+html
% The confusino matrix must be 2 x 2 in the following format:
%                preduction
%  ____________________________
%             |   pos     neg
%   __________|_________________
%   true | pos| 1,1 TP | 1,2 FN
%   clas | neg| 2,1 FP | 2,2 TN
FP   = confusion(2,1);
TN   = confusion(2,2);
spec = TN / (TN + FP);
end