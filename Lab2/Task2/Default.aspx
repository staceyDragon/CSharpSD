<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Task2._Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>Task2</title>
    </head>
    <body>
        <form id="form1" runat="server">
            Введите данные:<br /><br />
            ФИО<br />
            <asp:TextBox ID="TextBox1" runat="server" Width="400px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                runat="server" 
                ErrorMessage="Can not be empty"
                ControlToValidate="TextBox1" >
            </asp:RequiredFieldValidator>
            <br />
            Дата рождения (dd.mm.yyyy)<br />
            <asp:TextBox ID="TextBox2" runat="server" Width="400px"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator
                ID="RegularExpressionValidator2"
                runat="server"
                ControlToValidate="TextBox2"
                ErrorMessage="Not valid birth date"
                ValidationExpression="^\s*(3[01]|[12][0-9]|0?[1-9])\.(1[012]|0?[1-9])\.((?:19|20)\d{2})\s*$" >
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" 
                runat="server" 
                ErrorMessage="Can not be empty"
                ControlToValidate="TextBox2" >
            </asp:RequiredFieldValidator>
            <br />
            Пол<br />
            <asp:TextBox ID="TextBox3" runat="server" Width="400px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator3" 
                runat="server" 
                ErrorMessage="Can not be empty"
                ControlToValidate="TextBox3" >
            </asp:RequiredFieldValidator>
            <br />
            Образование<br />
            <asp:TextBox ID="TextBox4" runat="server" Width="400px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator4" 
                runat="server" 
                ErrorMessage="Can not be empty"
                ControlToValidate="TextBox4" >
            </asp:RequiredFieldValidator>
            <br />
            Номер соц.страхования<br />
            <asp:TextBox ID="TextBox5" runat="server" Width="400px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator5" 
                runat="server" 
                ErrorMessage="Can not be empty"
                ControlToValidate="TextBox5" >
            </asp:RequiredFieldValidator>
            <br />
            Должность<br />
            <asp:TextBox ID="TextBox6" runat="server" Width="400px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator6" 
                runat="server" 
                ErrorMessage="Can not be empty"
                ControlToValidate="TextBox6" >
            </asp:RequiredFieldValidator>
            <br />
            Номер телефона (0xxyyyyyyy)<br />
            <asp:TextBox ID="TextBox7" runat="server" Width="400px"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator
                ID="RegularExpressionValidator7"
                runat="server"
                ControlToValidate="TextBox7"
                ErrorMessage="Not valid phone number"
                ValidationExpression="^(0)([0-9][0-9])[0-9]{7}$" >
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator7" 
                runat="server" 
                ErrorMessage="Can not be empty"
                ControlToValidate="TextBox7" >
            </asp:RequiredFieldValidator>
            <br />
            <input id="Submit1" type="submit" value="Отправить" OnServerClick="Send" runat="server" />
        </form>
    </body>
</html>