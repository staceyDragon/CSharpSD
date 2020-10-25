<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab3._Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>Lab3</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <h1>Real estate agency</h1>
                <asp:GridView 
                    ID="GridView1" 
                    runat="server" 
                    AutoGenerateColumns="False"
                    BackColor="White" 
                    BorderColor="#E7E7FF" 
                    BorderStyle="None"
                    BorderWidth="1px"
                    CellPadding="3" 
                    DataKeyNames="id"
                    DataSourceID="AccessDataSource1"
                    GridLines="Horizontal">
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <Columns>
                        <asp:BoundField 
                            DataField="id" 
                            HeaderText="id"
                            InsertVisible="False"
                            ReadOnly="True" 
                            SortExpression="id" />
                        <asp:BoundField 
                            DataField="Title" 
                            HeaderText="Title"
                            SortExpression="Title" />
                        <asp:BoundField 
                            DataField="Price, $" 
                            HeaderText="Price, $"
                            SortExpression="Price, $" />
                        <asp:BoundField 
                            DataField="Rooms" 
                            HeaderText="Rooms"
                            SortExpression="Rooms" />
                        <asp:BoundField 
                            DataField="Floor" 
                            HeaderText="Floor"
                            SortExpression="Floor" />
                        <asp:BoundField 
                            DataField="Owner" 
                            HeaderText="Owner"
                            SortExpression="Owner" />
                        <asp:BoundField 
                            DataField="Location" 
                            HeaderText="Location"
                            SortExpression="Location" />
                    </Columns>
                    <PagerStyle
                        BackColor="#E7E7FF" 
                        ForeColor="#4A3C8C"
                        HorizontalAlign="Right" />
                    <SelectedRowStyle 
                        BackColor="#738A9C" 
                        Font-Bold="True" 
                        ForeColor="#F7F7F7" />
                    <HeaderStyle 
                        BackColor="#4A3C8C" 
                        Font-Bold="True"
                        ForeColor="#F7F7F7" />
                    <AlternatingRowStyle 
                        BackColor="#F7F7F7" />
                </asp:GridView>
                <asp:AccessDataSource 
                    ID="AccessDataSource1" 
                    runat="server"
                    DataFile="D:\repo\CSharpSD\Lab3\Database.mdb"
                    SelectCommand="SELECT * FROM [Table]">
                </asp:AccessDataSource>
            </div>
        </form>
    </body>
</html>