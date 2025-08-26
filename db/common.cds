namespace me.common;

type GUID: String(36);

type roleMenu : String(20) enum{
    L1='Level 1';
    L2='Level 2';
    L3='Level 3';
};

type ticketStatus : String(8) enum {
    O='Open';
    H='Hold';
    C='Close';
}

type ticketPriority : String(8) enum {
    P1='Low';
    P2='Medium';
    P3='High';
};

aspect ticketDetails {
    START_DATE : Date;
    END_DATE : Date;
    SEVERITY: ticketPriority;
    STATUS : ticketStatus;
}