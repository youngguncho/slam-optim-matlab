function System=addFactor( factorR, Config, System)

% [Config, System, Graph]=addFactor( factorR,Config, System, Graph)
% The script adds a new factor to the current representation: 
% Config, System and Graph
% Author: Viorela Ila
global Timing    
switch factorR.type
    case {'pose','loopClosure'}
        switch System.type
            case 'Hessian'
                System=addFactorPoseHessian(factorR,Config,System);
            case'CholFactor'
                System=addFactorPoseChol(factorR,Config,System);
            otherwise
                System=addFactorPose(factorR,Config,System);
        end

    case {'landmark','newLandmark'}
        switch System.type
            case 'Hessian'
                System=addFactorLandmarkHessian(factorR,Config,System);
            case'CholFactor'
                System=addFactorLandmarkChol(factorR,Config,System);
            otherwise
                System=addFactorLandmark(factorR,Config,System);
        end
    otherwise
        error('This type of factor is not handeled ')
end
