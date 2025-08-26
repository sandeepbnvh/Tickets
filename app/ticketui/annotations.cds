using TicketService as service from '../../srv/TicketsSrv';
annotate service.EmployeeSet with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FirstName',
                Value : FirstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LastName',
                Value : LastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : Email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Phone',
                Value : Phone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Role',
                Value : Role,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FirstName',
            Value : FirstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LastName',
            Value : LastName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Email',
            Value : Email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Phone',
            Value : Phone,
        },
    ],
    UI.SelectionFields : [
        FirstName,
        ID,
        LastName,
        Phone,
        Role,
        Email,
    ],
);

annotate service.EmployeeSet with {
    FirstName @Common.Label : 'FirstName'
};

annotate service.EmployeeSet with {
    ID @Common.Label : 'ID'
};

annotate service.EmployeeSet with {
    LastName @Common.Label : 'LastName'
};

annotate service.EmployeeSet with {
    Phone @Common.Label : 'Phone'
};

annotate service.EmployeeSet with {
    Role @Common.Label : 'Role'
};

annotate service.EmployeeSet with {
    Email @Common.Label : 'Email'
};

