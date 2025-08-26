using {
    db.master       as master,
    db.transactions as transactions
} from '../db/data';

service TicketService @(path: 'TicketService') {
    entity EmployeeSet        as projection on master.Employees;
    entity ProjectSet         as projection on master.Projects;
    entity EmployeeProjectSet as projection on master.EmployeeProjects;
    entity TicketSet          as projection on master.Tickets;
    entity TicketDetailSet    as projection on transactions.TicketDetails;
}
