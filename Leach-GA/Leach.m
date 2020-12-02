close all;
clear;
clc;

% Field Dimensions %
x_size=100;
y_size=100;
% Number of Nodes %
nodes=100;
% Number of Dead Nodes %
dead_nodes=0;
% Coordinates of the Sink %
sink_x=50;
sink_y=50;

% Initial Energy of a Node (in Joules) % 
Eo = 1;
% Energy required to run node (both for transmitter and receiver) %
Eelec=50*10^(-9); % units in Joules/bit
ETx=50*10^(-9); % units in Joules/bit
ERx=50*10^(-9); % units in Joules/bit

% Transmit Amplifier Energy %
Eamp=10*10^(-10); % units in Joules*m^2/bit (amount of energy spent by the amplifier to transmit the bits)
% Data Aggregation Energy %
Eda=5*10^(-9); % units in Joules/bit (amount of energy spent by the cluster head to aggregate data)

% Size of data package %
size=4000; % units in bits

% Suggested percentage of cluster head %
probablity=0.05; % a 5% of the total nodes can form cluster head 
% Round %
round=0;
% Operating Nodes %
operating_nodes=nodes;
transmissions=0;

%%% Initializing of the Wireless Sensor Network %%%
for i=1:nodes
    
    SN(i).id=i;	% sensor node unique id
    SN(i).x=rand(1,1)*x_size;	% X-axis coordinates of sensor node
    SN(i).y=rand(1,1)*y_size;	% Y-axis coordinates of sensor node
    SN(i).E=Eo;     % sensor node energy (initially Eo)
    SN(i).role=0;   % Role of the node. '0' means node acts as normal, '1' means node acts as cluster head(initially all nodes are normal)
    SN(i).cluster=0; % Cluster which a node belongs to
    SN(i).condition=1;	% Condition of the node. '1' means node is operating node, '0' means is dead node
    SN(i).roundElection=0;  % Rounds left for node to become able to participate in cluster head election
    SN(i).distanceToClusterHead=0;	% Nodes distance from the cluster head of the cluster in which he belongs
    SN(i).distanceToSink=0;    % Nodes distance from the sink
    SN(i).clusterHeadId=0;   % node id of the cluster head which the node belongs to

    
    hold on;
    figure(1)
    plot(0,0,x_size,y_size,SN(i).x,SN(i).y,'ob',sink_x,sink_y,'*r');
    title 'Wireless Sensor Network';
    xlabel '(m)';
    ylabel '(m)';
    
end

%%% Set-Up Phase %%% 
while operating_nodes > 25
        
    % Displays round %     
    round     
    
    % Re-election value %
    reElection=mod(round,1/probablity);

	% Threshold value %
	threshold=(probablity/(1-probablity*reElection)); 
 
	% Reseting amount Of cluster heads in the network on the previous Round %
	clusterHeads=0;
    
    % Reseting amount Of energy consumed in the network on the previous Round %
    energy=0;
 
        
        
% Cluster Heads Election %  
    for i=1:nodes
        SN(i).cluster=0; % Reseting cluster in which the node belongs to
        SN(i).role=0; % Reseting node role
        SN(i).clusterHeadId=0; % Reseting cluster head id
        % As the node is participating
        if SN(i).roundElection>0
            SN(i).roundElection=SN(i).roundElection-1;
        end

        if (SN(i).E>0) && (SN(i).roundElection==0)
            generate = rand;	
            if generate < threshold
                SN(i).role=1; % Assigns the node role of cluster head
                SN(i).roundElection=1/probablity-reElection; % Rounds for which the node will be unable to become a cluter head
                SN(i).distanceToSink=sqrt((sink_x-SN(i).x)^2 + (sink_y-SN(i).y)^2); % Distance between the sink and the cluster head
                clusterHeads=clusterHeads+1;	% Number of cluster heads that have been elected 
                SN(i).cluster=clusterHeads; % Cluster of which the node got elected to be cluster head
                CL(clusterHeads).x=SN(i).x; % X-axis coordinates of elected cluster head
                CL(clusterHeads).y=SN(i).y; % Y-axis coordinates of elected cluster head
                CL(clusterHeads).id=i; % Assigns the node id of the newly elected cluster head
            end
        end
    end
        
	% Fixing size %
	CL=CL(1:clusterHeads);
  
    
    
    
% Grouping the Nodes into Clusters & Calulating the distance between Node and Cluster Head %
    for i=1:nodes
        if  (SN(i).role==0) && (SN(i).E>0) && (clusterHeads>0) % Node is normal
            for j=1:clusterHeads
                distance(j)=sqrt((CL(j).x-SN(i).x)^2 + (CL(j).y-SN(i).y)^2);
                % Distance between the sensor node and cluster head
            end
            % Fixing size %
            distance=distance(1:clusterHeads); 
            col = find(distance == min(distance)); % Cluster having min distance
            SN(i).cluster=col; % Assigns node to the cluster
            SN(i).distanceToClusterHead= distance(col); % Assigns distance of node to cluster head
            SN(i).clusterHeadId=CL(col).id;
        end
    end
       
        
       
%%% Steady-State Phase %%%
% Energy Dissipation for Normal nodes %
    for i=1:nodes
        if (SN(i).condition==1) && (SN(i).role==0) && (clusterHeads>0)
            clusterHeadId = SN(i).clusterHeadId;
            % Dissipation for normal nodes during transmission
            if SN(i).E>0
                ETx= ( Eelec + Eamp * SN(i).distanceToClusterHead^2 ) *size;
                energy = energy + ETx;
                SN(i).E = SN(i).E - ETx;

                if SN(i).E<=0       % Nodes energy depletes with transmission
                    SN(i).condition=0;
                    SN(i).clusterHeadId=0;
                    dead_nodes=dead_nodes + 1;
                    operating_nodes = operating_nodes - 1;
                end
            end
                
            % Dissipation for cluster head during reception
            if SN(clusterHeadId).condition==1 && SN(clusterHeadId).role==1
                if  SN(clusterHeadId).E>0 
                    ERx = ( Eelec + Eda ) * size;
                    energy = energy + ERx;
                    SN(clusterHeadId).E=SN(clusterHeadId).E - ERx;
                    if SN(clusterHeadId).E<=0  % Cluster heads energy depletes with reception
                        SN(clusterHeadId).condition=0;
                        dead_nodes=dead_nodes + 1;
                        operating_nodes= operating_nodes - 1;
                    end
                end
            end
        end
    end            
    
    
    
% Energy Dissipation for cluster head nodes %
   
    for i=1:nodes
        if (SN(i).condition==1)  && (SN(i).role==1)
            if SN(i).E > 0
                ETx= (Eelec + Eda + Eamp * SN(i).distanceToSink^2 )*size;
                energy = energy + ETx;
                SN(i).E=SN(i).E - ETx;
                if  SN(i).E<=0     % if cluster heads energy depletes with transmission
                    SN(i).condition=0;
                    dead_nodes=dead_nodes +1;
                    operating_nodes = operating_nodes - 1;
                end
            end
        end
    end

    % Cluster Heads of this round %
    % clusterHeads;
   
    % Transmissions occurs if any cluster head remain alive 
    clusterHeads
    if clusterHeads~=0
        transmissions=transmissions+1;
    end
 
    % Next Round %
    round= round +1;
    
    operatingNodesPerTransmission(transmissions) = operating_nodes;
    operatingNodesPerRound(round) = operating_nodes;
    

    if energy > 0
        energyPerTransmission(transmissions)=energy;
    end
    
end
    

% Plotting Simulation Results "Operating Nodes per Round" %
figure(2)
plot(1:round,operatingNodesPerRound(1:round),'-r','Linewidth',2);
title ({'LEACH'; 'Operating Nodes per Round';})
xlabel 'Rounds';
ylabel 'Operational Nodes';
hold on;

% Plotting Simulation Results  %
figure(3)
plot(1:transmissions,operatingNodesPerTransmission(1:transmissions),'-r','Linewidth',2);
title ({'LEACH'; 'Operational Nodes per Transmission';})
xlabel 'Transmissions';
ylabel 'Operational Nodes';
hold on;

% Plotting Simulation Results  %
figure(4)
plot(1:transmissions,energyPerTransmission(1:transmissions),'-r','Linewidth',2);
title ({'LEACH'; 'Energy consumed per Transmission';})
xlabel 'Transmission';
ylabel 'Energy ( J )';
hold on;  