

#include "veins/modules/application/traci/TrafficLightRsuApp3.h"

using namespace veins;

Define_Module(veins::TrafficLightRsuApp3);

void TrafficLightRsuApp3::initialize(int stage)
{
    DemoBaseApplLayer::initialize(stage);
    if (stage == 0) {
        // Initializing members and pointers of your application goes here
        EV << "Initializing " << par("appName").stringValue() << std::endl;
    }
    else if (stage == 1) {
        // Initializing members that require initialized other modules goes here
        initMsg = new cMessage("77",77);
        phaseMsg = new cMessage("88",88);
        scheduleAt(0.1, initMsg);
    }
}

void TrafficLightRsuApp3::finish()
{
    DemoBaseApplLayer::finish();
    // statistics recording goes here
}

void TrafficLightRsuApp3::onBSM(DemoSafetyMessage* bsm)
{
    // Your application has received a beacon message from another car or RSU
    // code for handling the message goes here
    DemoSafetyMessage* wsmBeacon = check_and_cast<DemoSafetyMessage*>(bsm);



            EV << "BEACON MESSAGE wsmBeacon->getSenderGateId():" << wsmBeacon->getSenderGateId() << std::endl;

            EV << "BEACON MESSAGE  wsmBeacon->getSenderPos().distance(curPosition)" <<  wsmBeacon->getSenderPos().distance(curPosition) << std::endl;
            EV << "BEACON MESSAGE getSenderPos().x:" << wsmBeacon->getSenderPos().x << std::endl;
            EV << "BEACON MESSAGE getSenderPos().y:" << wsmBeacon->getSenderPos().y << std::endl;
            EV << "BEACON MESSAGE getSenderPos().z:" << wsmBeacon->getSenderPos().z << std::endl;
            EV << "BEACON MESSAGE getArrivalTime:" << wsmBeacon->getArrivalTime()<< std::endl;
            EV << "BEACON MESSAGE getArrivalTime:" << wsmBeacon->getCreationTime()<< std::endl;
            EV << "BEACON MESSAGE getChannelNumber:" << wsmBeacon->getChannelNumber()<< std::endl;
            EV << "BEACON MESSAGE getArrivalGate()->getBaseId():" << wsmBeacon->getArrivalGate()->getBaseId()<< std::endl;

            EV << "BEACON MESSAGE getArrivalGateId:" << wsmBeacon->getArrivalGateId()<< std::endl;

            EV << "BEACON MESSAGE getRecipientAddress:" << wsmBeacon->getRecipientAddress() << std::endl;
            //EV << "myMacAddr" << myMacAddr << std::endl;
            EV << "myId" << myId << std::endl; // nic id of RSU
            EV << "carId" << wsmBeacon->getPsid() << std::endl; // nic Id car
            EV << "imsg" <<  *initMsg << std::endl;
            EV << "pmsg" <<  *phaseMsg << std::endl;
            //EV << "idvehicle" <<  idVehicle << std::endl;



}

void TrafficLightRsuApp3::onWSM(BaseFrame1609_4* wsm)
{
    // Your application has received a data message from another car or RSU
    // code for handling the message goes here, see TraciDemo11p.cc for examples
}

void TrafficLightRsuApp3::onWSA(DemoServiceAdvertisment* wsa)
{
    // Your application has received a service advertisement from another car or RSU
    // code for handling the message goes here, see TraciDemo11p.cc for examples
}

void TrafficLightRsuApp3::handleSelfMsg(cMessage* msg)
{
    // this method is for self messages (mostly timers)
    // it is important to call the DemoBaseApplLayer function for BSM and WSM transmission
    DemoBaseApplLayer::handleSelfMsg(msg);
    switch (msg->getKind())
    {
    EV << "mmskind" << msg->getKind() << std::endl;
        case 77:
            manager = TraCIScenarioManagerAccess().get();
            traci = manager->getCommandInterface();
    switch (myId)
    {
    case 24: // first traffic light RSU[0]
        trafficLightId = "5217665421";
        traci->trafficlight(trafficLightId).setProgram("0");
        break;
    case 29: // first traffic light RSU[1]
           trafficLightId = "2680904053";
           traci->trafficlight(trafficLightId).setProgram("0");
           break;
    case 34: // second traffic light RSU[2]
        trafficLightId = "267939824";
        traci->trafficlight(trafficLightId).setProgram("0");
        break;
    case 39: // second traffic light RSU[3]
        trafficLightId = "267939816";
        traci->trafficlight(trafficLightId).setProgram("0");
        break;
    case 44: // second traffic light RSU[4]
        trafficLightId = "267544843";
        traci->trafficlight(trafficLightId).setProgram("0");
        break;
    case 49: // second traffic light RSU[5]
        trafficLightId = "267544845";
        traci->trafficlight(trafficLightId).setProgram("0");
        break;
    case 54: // second traffic light RSU[6]
        trafficLightId = "4207562847";
        traci->trafficlight(trafficLightId).setProgram("0");
        break;
    case 59: // second traffic light RSU[7]
        trafficLightId = "267544849";
        traci->trafficlight(trafficLightId).setProgram("0");
        break;
    case 64: // second traffic light RSU[8]
        trafficLightId = "264272696";
        traci->trafficlight(trafficLightId).setProgram("0");
        break;
    case 69: // second traffic light RSU[9]
        trafficLightId = "5162953780";
        traci->trafficlight(trafficLightId).setProgram("0");
        break;
    case 74: // second traffic light RSU[10]
        trafficLightId = "264272697";
        traci->trafficlight(trafficLightId).setProgram("0");
        break;
    case 79: // second traffic light RSU[11]
        trafficLightId = "264272698";
        traci->trafficlight(trafficLightId).setProgram("0");
        break;
    case 84: // second traffic light RSU[12]
        trafficLightId = "5162957495";
        traci->trafficlight(trafficLightId).setProgram("0");
        break;

    case 89: // second traffic light RSU[13]
         trafficLightId = "3888620560";
         traci->trafficlight(trafficLightId).setProgram("0");
         trafficLightId = "7245321337";
         traci->trafficlight(trafficLightId).setProgram("0");
         break;

    case 94: // second traffic light RSU[14]
         trafficLightId = "5228154888";
         traci->trafficlight(trafficLightId).setProgram("0");
         break;

    case 99: // second traffic light RSU[15]
         trafficLightId = "5228154887";
         traci->trafficlight(trafficLightId).setProgram("0");
         break;

    default:
        assert(0); // something wrong, it's not a traffic light, crash the program
        break;
    }
    break;
    case 88:
    traci->trafficlight(trafficLightId).setProgram("0");
    break;
    default:
    assert(0);
    break;
    }
}

void TrafficLightRsuApp3::handlePositionUpdate(cObject* obj)
{
    DemoBaseApplLayer::handlePositionUpdate(obj);
    // the vehicle has moved. Code that reacts to new positions goes here.
    // member variables such as currentPosition and currentSpeed are updated in the parent class
}
