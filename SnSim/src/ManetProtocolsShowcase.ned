package snsim;

package inet.showcases.routing.manet;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.ManetRouter;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.common.IntegratedMultiVisualizer;


network ManetProtocolsShowcaseA
{
    parameters:
        @display("bgb=1500,1000;bgl=2");
        @statistic[numRcvdPk](source=count(source.app[0].pingRxSeq); record=figure; targetFigure=numRcvdPkCounter; checkSignals=false);
        @figure[numRcvdPkCounter](type=counter; pos=65,400; label="Received ping replies"; decimalPlaces=4);
        @statistic[numLost](source=count(source.app[0].numLost); record=figure; targetFigure=numLostPkCounter; checkSignals=false);
        @figure[numLostPkCounter](type=counter; pos=65,500; label="Pings lost"; decimalPlaces=4);
        @statistic[avgDelay](source=mean(source.app[0].rtt); record=figure; targetFigure=avgDelayCounter; checkSignals=false);
        @figure[avgDelayCounter](type=counter; pos=65,600; label="Average packet delay (ms)"; decimalPlaces=2);
        @statistic[throughput](source=throughput(source.app[0].rcvdPk); record=figure; targetFigure=throughputCounter; checkSignals=false);
        @figure[throughputCounter](type=counter; pos=65,700; label="Throughput (bps)"; decimalPlaces=2);
        @figure[forest](type=image; image="showcases/forest"; pos=0,0; transform=scale(0.7),translate(1100,450));
        @figure[tree1](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1000,350));
        @figure[tree2](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1065,260));
        @figure[tree3](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1140,380));
        @figure[tree4](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1080,470));
        @figure[tree5](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(990,530));
        @figure[tree6](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1050,600));
        @figure[tree7](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1170,620));
    submodules:
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=100,100");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=100,200");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=100,300");
        }
        source: ManetRouter {
            @display("p=394,189;i=misc/solarpanel");
        }
        destination: ManetRouter {
            @display("p=1230,492;i=misc/sensorgateway");
        }
        // Original 12 nodes
        node1: ManetRouter {
            @display("p=1064.24,824.82465;i=misc/solarpanel");
        }
        node2: ManetRouter {
            @display("p=940,718;i=misc/solarpanel");
        }
        node3: ManetRouter {
            @display("p=1304,253;i=misc/solarpanel");
        }
        node4: ManetRouter {
            @display("p=1331,391;i=misc/solarpanel");
        }
        node5: ManetRouter {
            @display("p=890,430;i=misc/solarpanel");
        }
        node6: ManetRouter {
            @display("p=851,573;i=misc/solarpanel");
        }
        node7: ManetRouter {
            @display("p=1046,112;i=misc/solarpanel");
        }
        node8: ManetRouter {
            @display("p=901,157;i=misc/solarpanel");
        }
        node9: ManetRouter {
            @display("p=862,286;i=misc/solarpanel");
        }
        node10: ManetRouter {
            @display("p=1200,156;i=misc/solarpanel");
        }
        node11: ManetRouter {
            @display("p=701,373;i=misc/solarpanel");
        }
        node12: ManetRouter {
            @display("p=529,286;i=misc/solarpanel");
        }
        // Additional nodes for medium density (total 25)
        node13: ManetRouter {
            @display("p=600,450;i=misc/solarpanel");
        }
        node14: ManetRouter {
            @display("p=750,200;i=misc/solarpanel");
        }
        node15: ManetRouter {
            @display("p=950,300;i=misc/solarpanel");
        }
        node16: ManetRouter {
            @display("p=1100,400;i=misc/solarpanel");
        }
        node17: ManetRouter {
            @display("p=650,550;i=misc/solarpanel");
        }
        node18: ManetRouter {
            @display("p=800,650;i=misc/solarpanel");
        }
        node19: ManetRouter {
            @display("p=480,380;i=misc/solarpanel");
        }
        node20: ManetRouter {
            @display("p=550,180;i=misc/solarpanel");
        }
        node21: ManetRouter {
            @display("p=1000,750;i=misc/solarpanel");
        }
        node22: ManetRouter {
            @display("p=1150,700;i=misc/solarpanel");
        }
        node23: ManetRouter {
            @display("p=1250,350;i=misc/solarpanel");
        }
        node24: ManetRouter {
            @display("p=700,250;i=misc/solarpanel");
        }
        node25: ManetRouter {
            @display("p=850,400;i=misc/solarpanel");
        }
        // Additional nodes for high density (total 50)
        node26: ManetRouter {
            @display("p=450,500;i=misc/solarpanel");
        }
        node27: ManetRouter {
            @display("p=500,600;i=misc/solarpanel");
        }
        node28: ManetRouter {
            @display("p=600,700;i=misc/solarpanel");
        }
        node29: ManetRouter {
            @display("p=700,800;i=misc/solarpanel");
        }
        node30: ManetRouter {
            @display("p=800,750;i=misc/solarpanel");
        }
        node31: ManetRouter {
            @display("p=900,650;i=misc/solarpanel");
        }
        node32: ManetRouter {
            @display("p=1050,550;i=misc/solarpanel");
        }
        node33: ManetRouter {
            @display("p=1150,450;i=misc/solarpanel");
        }
        node34: ManetRouter {
            @display("p=1300,570;i=misc/solarpanel");
        }
        node35: ManetRouter {
            @display("p=1350,650;i=misc/solarpanel");
        }
        node36: ManetRouter {
            @display("p=1250,750;i=misc/solarpanel");
        }
        node37: ManetRouter {
            @display("p=1100,850;i=misc/solarpanel");
        }
        node38: ManetRouter {
            @display("p=950,800;i=misc/solarpanel");
        }
        node39: ManetRouter {
            @display("p=400,400;i=misc/solarpanel");
        }
        node40: ManetRouter {
            @display("p=450,250;i=misc/solarpanel");
        }
        node41: ManetRouter {
            @display("p=500,150;i=misc/solarpanel");
        }
        node42: ManetRouter {
            @display("p=650,120;i=misc/solarpanel");
        }
        node43: ManetRouter {
            @display("p=780,150;i=misc/solarpanel");
        }
        node44: ManetRouter {
            @display("p=950,180;i=misc/solarpanel");
        }
        node45: ManetRouter {
            @display("p=1050,220;i=misc/solarpanel");
        }
        node46: ManetRouter {
            @display("p=1150,300;i=misc/solarpanel");
        }
        node47: ManetRouter {
            @display("p=1200,350;i=misc/solarpanel");
        }
        node48: ManetRouter {
            @display("p=1100,280;i=misc/solarpanel");
        }
        node49: ManetRouter {
            @display("p=750,500;i=misc/solarpanel");
        }
        node50: ManetRouter {
            @display("p=820,350;i=misc/solarpanel");
        }
}

network ManetProtocolsShowcaseD
{
    parameters:
        @display("bgb=400,400");
        @statistic[numRcvdPk](source=count(source.app[0].pingRxSeq); record=figure; targetFigure=numRcvdPkCounter; checkSignals=false);
        @figure[numRcvdPkCounter](type=counter; transform=scale(0.5); pos=50,300; label="Received ping replies"; decimalPlaces=4);
        @statistic[numLost](source=count(source.app[0].numLost); record=figure; targetFigure=numLostPkCounter; checkSignals=false);
        @figure[numLostPkCounter](type=counter; transform=scale(0.5); pos=50,400; label="Pings lost"; decimalPlaces=4);
        @statistic[avgDelay](source=mean(source.app[0].rtt); record=figure; targetFigure=avgDelayCounter; checkSignals=false);
        @figure[avgDelayCounter](type=counter; transform=scale(0.5); pos=50,500; label="Average packet delay (ms)"; decimalPlaces=2);
        @statistic[throughput](source=throughput(source.app[0].rcvdPk); record=figure; targetFigure=throughputCounter; checkSignals=false);
        @figure[throughputCounter](type=counter; transform=scale(0.5); pos=50,600; label="Throughput (bps)"; decimalPlaces=2);

    submodules:
        source: ManetRouter {
            @display("p=104,335");
        }
        node1: ManetRouter {
            @display("p=104,226");
        }
        node2: ManetRouter {
            @display("p=175,140");
        }
        node3: ManetRouter {
            @display("p=238,276");
        }
        node4: ManetRouter {
            @display("p=312,196");
        }
        node6: ManetRouter {
            @display("p=147,67");
        }
        node7: ManetRouter {
            @display("p=60,125");
        }
        destination: ManetRouter {
            @display("p=292,80");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=38,28");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=38.461544,66.863914");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=38.461544,106.50889");
        }
}

network ManetProtocolsShowcaseB
{
    parameters:
        @display("bgb=1500,1000;bgl=2");
        @statistic[numRcvdPk](source=count(source.app[0].pingRxSeq); record=figure; targetFigure=numRcvdPkCounter; checkSignals=false);
        @figure[numRcvdPkCounter](type=counter; pos=65,400; label="Received ping replies"; decimalPlaces=4);
        @statistic[numLost](source=count(source.app[0].numLost); record=figure; targetFigure=numLostPkCounter; checkSignals=false);
        @figure[numLostPkCounter](type=counter; pos=65,500; label="Pings lost"; decimalPlaces=4);
        @statistic[avgDelay](source=mean(source.app[0].rtt); record=figure; targetFigure=avgDelayCounter; checkSignals=false);
        @figure[avgDelayCounter](type=counter; pos=65,600; label="Average packet delay (ms)"; decimalPlaces=2);
        @statistic[throughput](source=throughput(source.app[0].rcvdPk); record=figure; targetFigure=throughputCounter; checkSignals=false);
        @figure[throughputCounter](type=counter; pos=65,700; label="Throughput (bps)"; decimalPlaces=2);
        @figure[forest](type=image; image="showcases/forest"; pos=0,0; transform=scale(0.7),translate(1100,450));
        @figure[tree1](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1000,350));
        @figure[tree2](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1065,260));
        @figure[tree3](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1140,380));
        @figure[tree4](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1080,470));
        @figure[tree5](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(990,530));
        @figure[tree6](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1050,600));
        @figure[tree7](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1170,620));
    submodules:
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=100,100");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=100,200");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=100,300");
        }
        source: ManetRouter {
            @display("p=394,189;i=misc/solarpanel");
        }
        destination: ManetRouter {
            @display("p=1230,492;i=misc/sensorgateway");
        }
        // Original 12 nodes
        node1: ManetRouter {
            @display("p=1064.24,824.82465;i=misc/solarpanel");
        }
        node2: ManetRouter {
            @display("p=940,718;i=misc/solarpanel");
        }
        node3: ManetRouter {
            @display("p=1304,253;i=misc/solarpanel");
        }
        node4: ManetRouter {
            @display("p=1331,391;i=misc/solarpanel");
        }
        node5: ManetRouter {
            @display("p=890,430;i=misc/solarpanel");
        }
        node6: ManetRouter {
            @display("p=851,573;i=misc/solarpanel");
        }
        node7: ManetRouter {
            @display("p=1046,112;i=misc/solarpanel");
        }
        node8: ManetRouter {
            @display("p=901,157;i=misc/solarpanel");
        }
        node9: ManetRouter {
            @display("p=862,286;i=misc/solarpanel");
        }
        node10: ManetRouter {
            @display("p=1200,156;i=misc/solarpanel");
        }
        node11: ManetRouter {
            @display("p=701,373;i=misc/solarpanel");
        }
        node12: ManetRouter {
            @display("p=529,286;i=misc/solarpanel");
        }
        // Additional nodes for medium density (total 25)
        node13: ManetRouter {
            @display("p=600,450;i=misc/solarpanel");
        }
        node14: ManetRouter {
            @display("p=750,200;i=misc/solarpanel");
        }
        node15: ManetRouter {
            @display("p=950,300;i=misc/solarpanel");
        }
        node16: ManetRouter {
            @display("p=1100,400;i=misc/solarpanel");
        }
        node17: ManetRouter {
            @display("p=650,550;i=misc/solarpanel");
        }
        node18: ManetRouter {
            @display("p=800,650;i=misc/solarpanel");
        }
        node19: ManetRouter {
            @display("p=480,380;i=misc/solarpanel");
        }
        node20: ManetRouter {
            @display("p=550,180;i=misc/solarpanel");
        }
        node21: ManetRouter {
            @display("p=1000,750;i=misc/solarpanel");
        }
        node22: ManetRouter {
            @display("p=1150,700;i=misc/solarpanel");
        }
        node23: ManetRouter {
            @display("p=1250,350;i=misc/solarpanel");
        }
        node24: ManetRouter {
            @display("p=700,250;i=misc/solarpanel");
        }
        node25: ManetRouter {
            @display("p=850,400;i=misc/solarpanel");
        }
}

network ManetProtocolsShowcaseC
{
    parameters:
        @display("bgb=1500,1000;bgl=2");
        @statistic[numRcvdPk](source=count(source.app[0].pingRxSeq); record=figure; targetFigure=numRcvdPkCounter; checkSignals=false);
        @figure[numRcvdPkCounter](type=counter; pos=65,400; label="Received ping replies"; decimalPlaces=4);
        @statistic[numLost](source=count(source.app[0].numLost); record=figure; targetFigure=numLostPkCounter; checkSignals=false);
        @figure[numLostPkCounter](type=counter; pos=65,500; label="Pings lost"; decimalPlaces=4);
        @statistic[avgDelay](source=mean(source.app[0].rtt); record=figure; targetFigure=avgDelayCounter; checkSignals=false);
        @figure[avgDelayCounter](type=counter; pos=65,600; label="Average packet delay (ms)"; decimalPlaces=2);
        @statistic[throughput](source=throughput(source.app[0].rcvdPk); record=figure; targetFigure=throughputCounter; checkSignals=false);
        @figure[throughputCounter](type=counter; pos=65,700; label="Throughput (bps)"; decimalPlaces=2);
        @figure[forest](type=image; image="showcases/forest"; pos=0,0; transform=scale(0.7),translate(1100,450));
        @figure[tree1](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1000,350));
        @figure[tree2](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1065,260));
        @figure[tree3](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1140,380));
        @figure[tree4](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1080,470));
        @figure[tree5](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(990,530));
        @figure[tree6](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1050,600));
        @figure[tree7](type=image; image="showcases/tree"; pos=0,0; transform=scale(0.1),translate(1170,620));
    submodules:
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=100,100");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=100,200");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=100,300");
        }
        source: ManetRouter {
            @display("p=794,189;i=misc/solarpanel");
        }
        destination: ManetRouter {
            @display("p=1230,492;i=misc/sensorgateway");
        }
        // Original 12 nodes
        node1: ManetRouter {
            @display("p=1064.24,824.82465;i=misc/solarpanel");
        }
        node2: ManetRouter {
            @display("p=940,718;i=misc/solarpanel");
        }
        node3: ManetRouter {
            @display("p=1304,253;i=misc/solarpanel");
        }
        node4: ManetRouter {
            @display("p=1331,391;i=misc/solarpanel");
        }
        node5: ManetRouter {
            @display("p=890,430;i=misc/solarpanel");
        }
        node6: ManetRouter {
            @display("p=851,573;i=misc/solarpanel");
        }
        node7: ManetRouter {
            @display("p=1046,112;i=misc/solarpanel");
        }
        node8: ManetRouter {
            @display("p=901,157;i=misc/solarpanel");
        }
        node9: ManetRouter {
            @display("p=862,286;i=misc/solarpanel");
        }
        node10: ManetRouter {
            @display("p=1200,156;i=misc/solarpanel");
        }

}