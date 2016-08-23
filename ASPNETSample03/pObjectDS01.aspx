<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pObjectDS01.aspx.cs" Inherits="ASPNETSample03.pObjectDS01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox runat="server" ID="txtSearch"></asp:TextBox>
        <asp:Button runat="server" ID="btnSearch" Text="Search" OnClick="btnSearch_Click"/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS01">
            <Columns>
                <asp:BoundField DataField="idPessoa" HeaderText="idPessoa" SortExpression="idPessoa" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
                <asp:BoundField DataField="obs" HeaderText="obs" SortExpression="obs" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ODS01" runat="server" SelectMethod="GetPessoas" 
            TypeName="ASPNETSample03.SampleContext">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearch" Type="String" Name="Search" PropertyName="Text" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
