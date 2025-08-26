namespace db;

using { me.common as common} from './common.cds';

using {cuid,managed,temporal} from '@sap/cds/common';


context master {

    entity Employees : managed {
        key ID :common.GUID;
        FirstName : String(50);
        LastName : String(50);
        Email : String(100);
        Phone : String(20);
        Role:common.roleMenu;

    }
    
    entity Projects: managed{
        key ID :common.GUID;
        Name : String(100);
        Description : String(100);
        StartDate : Date;
        EndDate : Date;
        Budget : Decimal(10,2);
    }

    entity EmployeeProjects {
        key Employee : Association to one Employees;
        key Project : Association to one Projects;
        AssignedOn: DateTime;
        Role : String(50);
    }

    entity Tickets {
        key ID: common.GUID;
        key Project : Association to one Projects;
        key Employee : Association to one Employees;
        Description : String(255);
        Priority : common.ticketPriority;
        createdOn : DateTime;
        updatedOn : DateTime;

        Details: Association to one transactions.TicketDetails on Details.Ticket.ID = $self.ID;
    }
    
}
context  transactions {
    entity TicketDetails : managed {
        key ID : common.GUID;
        key Ticket : Association to one master.Tickets;
        ReportedBy: String(100);
        ReportedOn: DateTime;
        Status:common.ticketStatus;
        ResolutionNotes: String(255);
        LastUpdatedBy  : String(100);
    }
    
}