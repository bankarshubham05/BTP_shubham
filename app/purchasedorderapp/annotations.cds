using CatalogService as service from '../../srv/CatalogService';
annotate service.POs with @(

    UI.SelectionFields :[
        ID,
        GROSS_AMOUNT,
        OVERALL_STATUS,
        PARTNER_GUID.ADDRESS_GUID.COUNTRY
        
    ],

    UI.HeaderInfo : {

        TypeName : '{i18n>purcahseorder}',
        TypeNamePlural : '{i18n>purcahseorders}',
        Title : {
            Label : '{i18n>Po_ID}',
            Value :  ID,
        },
        Description :{
            Label : '{i18n>Company_Name}',
            Value : PARTNER_GUID.COMPANY_NAME
        }
    },
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CURRENCY_CODE',
            Value : CURRENCY_CODE,
        },
        {
            $Type : 'UI.DataField',
            Label : 'GROSS_AMOUNT',
            Value : GROSS_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Label : 'NET_AMOUNT',
            Value : NET_AMOUNT,
        },
        {
            $Type : 'UI.DataField',
            Label : 'TAX_AMOUNT',
            Value : TAX_AMOUNT,
        },
        {   
            $Type :'UI.DataField',
            Label:'Status',
            Value: LIFECYCLE_STATUS,
            Criticality : Criticality,
            CriticalityRepresentation : #WithIcon,
        },
        {
            $Type:'UI.DataFieldForAction',
            Label : 'Boost',
            Action : 'CatalogService.Boost',
            Inline : true,
        }
    ]
);
annotate service.POs with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'CURRENCY_CODE',
                Value : CURRENCY_CODE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'GROSS_AMOUNT',
                Value : GROSS_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NET_AMOUNT',
                Value : NET_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TAX_AMOUNT',
                Value : TAX_AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PO_ID',
                Value : PO_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PARTNER_GUID_NODE_KEY',
                Value : PARTNER_GUID_NODE_KEY,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LIFECYCLE_STATUS',
                Value : LIFECYCLE_STATUS,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OVERALL_STATUS',
                Value : OVERALL_STATUS,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>po_General_Info}',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label: '{i18n>po_Order_Items}',
            Target : 'Items/@UI.LineItem',
        }
    ]
);

annotate service.POItems with @(
    UI.LineItem:[
        {
            $Type : 'UI.DataField',
            Value: PO_ITEM_POS,
            Label:'{i18n>po_Order_Items}'

        },
         {
            $Type : 'UI.DataField',
            Value: PRODUCT_GUID_NODE_KEY,
            Label:'{i18n>POID_GUID}'

        },
         {
            $Type : 'UI.DataField',
            Value: ID,
            Label:'{i18n>Po_ID}'

        },
         
         {
            $Type : 'UI.DataField',
            Value: GROSS_AMOUNT,
            Label:'{i18n>Gross_Amount}'

        },
         {
            $Type : 'UI.DataField',
            Value: NET_AMOUNT,
            Label:'{i18n>Net_Amount}'

        },
         {
            $Type : 'UI.DataField',
            Value: TAX_AMOUNT,
            Label:'{i18n>Tax_Amount}'

        },
         {
            $Type : 'UI.DataField',
            Value: CURRENCY_CODE,
            Label :'{i18n>Currency_Code}'

        }
    ],
    UI.HeaderInfo:{
        TypeName : 'Purchase Order Item',
        TypeNamePlural : 'Purchase Order Items',
        Title : {
            $Type : 'UI.DataField',
            Value:PRODUCT_GUID_NODE_KEY,

        },
        Description:{
            $Type: 'UI.DataField',
            Value:PO_ITEM_POS
        }
    },
    UI.Facets:[
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Line Item Header',
            Target : '@UI.FieldGroup#LineItemHeader1',
        }
    ],

    UI.FieldGroup#LineItemHeader1 : {
        $Type:'UI.FieldGroupType',
        Data:[
            {
                $Type : 'UI.DataField',
                Value:PO_ITEM_POS,
                 Label:'{i18n>po_Order_Items}'

            },
            {
                $Type : 'UI.DataField',
                Value:PRODUCT_GUID_NODE_KEY,
                 Label:'{i18n>POID_GUID}'
            },
            {
                $Type : 'UI.DataField',
                Value:NET_AMOUNT,
                Label:'{i18n>Net_Amount}'
            },
            {
                $Type : 'UI.DataField',
                Value:GROSS_AMOUNT,
                Label:'{i18n>Gross_Amount}'
            },
            {
                $Type : 'UI.DataField',
                Value:TAX_AMOUNT,
                Label:'{i18n>Tax_Amount}'
            },
            {
                $Type : 'UI.DataField',
                Value:CURRENCY_CODE,
                Label :'{i18n>Currency_Code}'
            }
        ]
    }
) ;
