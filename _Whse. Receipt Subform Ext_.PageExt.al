pageextension 50104 "Whse. Receipt Subform Ext" extends "Whse. Receipt Subform"
{
    actions
    {
        addafter("&Line")
        {
            action("Print Label")
            {
                ApplicationArea = All;
                Caption = 'Print Label';
                Image = Print;

                trigger OnAction()
                var
                    WarehouseReceiptLine: Record "Warehouse Receipt Line";
                begin
                    CurrPage.SetSelectionFilter(WarehouseReceiptLine);
                    if WarehouseReceiptLine.FindSet()then Report.Run(Report::"Warehouse Receipt Label", true, false, WarehouseReceiptLine);
                end;
            }
        }
    }
}
