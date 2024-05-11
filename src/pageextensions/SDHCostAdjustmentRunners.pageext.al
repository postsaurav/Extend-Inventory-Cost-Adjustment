pageextension 60001 "SDH Cost Adjustment Runners" extends "Cost Adjustment Runners"
{
    layout
    {
        addfirst(Runs)
        {
            field("Batch Name"; Rec."SDH Batch Name")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Batch Name field.';
            }
        }
    }
}