using Catalog_Service as service from '../../srv/service';
annotate service.story with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'st_id',
                Value : st_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'st_name',
                Value : st_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'st_type',
                Value : st_type,
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
            Label : 'st_id',
            Value : st_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'st_name',
            Value : st_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'st_type',
            Value : st_type,
        },
    ],
);

