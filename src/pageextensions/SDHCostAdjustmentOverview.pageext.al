pageextension 60000 "SDH Cost Adjustment Overview" extends "Cost Adjustment Overview"
{
    actions
    {
        addafter("Add Batch")
        {
            action("Add Inv Posting Batch")
            {
                Caption = 'Add batch - Inv. Posting Group';
                ToolTip = 'Add the items to a new cost adjustment batch based on Inventory Posting Group.';
                ApplicationArea = All;
                Image = PostingEntries;

                trigger OnAction()
                var
                    Item: Record Item;
                    InventoryPostingGroup: Record "Inventory Posting Group";
                    CostAdjItemBucket: Record "Cost Adj. Item Bucket";
                begin
                    if InventoryPostingGroup.FindSet() then
                        repeat
                            Item.SetRange("Inventory Posting Group", InventoryPostingGroup."Code");
                            If not Item.IsEmpty() then
                                CostAdjItemBucket.AddItemsToBucket(Item);
                        until (InventoryPostingGroup.Next() = 0);

                end;
            }
        }
        addafter("Add Batch_Promoted")
        {
            actionref("Add Inv Posting Batch_promoted"; "Add Inv Posting Batch") { }
        }
    }
}
