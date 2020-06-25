

#include "veins/modules/application/traci/TrafficLightRsuApp.h"

using namespace veins;

Define_Module(veins::TrafficLightRsuApp);

void TrafficLightRsuApp::initialize(int stage)
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

void TrafficLightRsuApp::finish()
{
    DemoBaseApplLayer::finish();
    // statistics recording goes here
}

void TrafficLightRsuApp::onBSM(DemoSafetyMessage* bsm)
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


                if (wsmBeacon->getPsid() == 21) {
                    if ((wsmBeacon->getSenderPos().distance(curPosition)) < 20) {
                        if (!phaseMsg->isScheduled()) {
                            traci->trafficlight(trafficLightId).setProgram("program1");
                            scheduleAt(simTime()+5,phaseMsg);
                        }
                    }
            }




}

void TrafficLightRsuApp::onWSM(BaseFrame1609_4* wsm)
{
    // Your application has received a data message from another car or RSU
    // code for handling the message goes here, see TraciDemo11p.cc for examples
}

void TrafficLightRsuApp::onWSA(DemoServiceAdvertisment* wsa)
{
    // Your application has received a service advertisement from another car or RSU
    // code for handling the message goes here, see TraciDemo11p.cc for examples
}

void TrafficLightRsuApp::handleSelfMsg(cMessage* msg)
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
    case 10: // first traffic light
        trafficLightId = "light2";
        traci->trafficlight(trafficLightId).setProgram("program2");
        break;
    case 15: // second traffic light
        trafficLightId = "light1";
        traci->trafficlight(trafficLightId).setProgram("program2");
        break;
    default:
        assert(0); // something wrong, it's not a traffic light, crash the program
        break;
    }
    break;
    case 88:
    traci->trafficlight(trafficLightId).setProgram("program2");
    break;
    default:
    assert(0);
    break;
    }
}

void TrafficLightRsuApp::handlePositionUpdate(cObject* obj)
{
    DemoBaseApplLayer::handlePositionUpdate(obj);
    // the vehicle has moved. Code that reacts to new positions goes here.
    // member variables such as currentPosition and currentSpeed are updated in the parent class
}
