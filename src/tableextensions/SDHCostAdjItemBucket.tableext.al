tableextension 60000 "SDH Cost Adj. Item Bucket" extends "Cost Adj. Item Bucket"
{
    fields
    {
        field(60000; "SDH Batch Name"; Text[100])
        {
            Caption = 'Batch Name';
            DataClassification = CustomerContent;
        }
    }
}
