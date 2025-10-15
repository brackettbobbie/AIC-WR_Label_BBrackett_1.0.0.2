report 50114 "Warehouse Receipt Label"
{
    Caption = 'Warehouse Receipt Label';
    DefaultLayout = Word;
    WordLayout = './WarehouseReceiptLabel.docx';
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem("Warehouse Receipt Line"; "Warehouse Receipt Line")
        {
            RequestFilterFields = "No.";
            DataItemTableView = sorting("No.", "Line No.");

            column(Whse_Rcpt_No; "No.")
            {
            }
            column(Item_No; "Item No.")
            {
            }
            column(Qty_to_Receive; "Qty. to Receive")
            {
            }
            column(Source_No; "Source No.")
            {
            }
            column(DateTimeStamp; Format(CurrentDateTime, 0, '<Day,2>-<Month,2>-<Year4> <Hours24,2>:<Minutes,2>'))
            {
            }
            dataitem("Purchase Header"; "Purchase Header")
            {
                DataItemLink = "No."=FIELD("Source No.");
                DataItemTableView = sorting("Document Type", "No.");

                column(Vendor_Name; "Buy-from Vendor Name")
                {
                }
                column(Vendor_No; "Buy-from Vendor No.")
                {
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
