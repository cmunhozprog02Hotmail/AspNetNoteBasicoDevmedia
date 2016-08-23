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
        <asp:GridView ID="GridView1" runat="server" 
            AutoGenerateColumns="False" DataSourceID="ODS01">
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
                <asp:ControlParameter ControlID="txtSearch" Type="String" Name="Search" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
        <br />
        <asp:FormView ID="FormView1" runat="server" DataSourceID="ODS02" DefaultMode="Insert">
            <EditItemTemplate>
                idPessoa:
                <asp:TextBox ID="idPessoaTextBox" runat="server" Text='<%# Bind("idPessoa") %>' />
                <br />
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                telefone:
                <asp:TextBox ID="telefoneTextBox" runat="server" Text='<%# Bind("telefone") %>' />
                <br />
                obs:
                <asp:TextBox ID="obsTextBox" runat="server" Text='<%# Bind("obs") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                telefone:
                <asp:TextBox ID="telefoneTextBox" runat="server" Text='<%# Bind("telefone") %>' />
                <br />
                obs:
                <asp:TextBox ID="obsTextBox" runat="server" Text='<%# Bind("obs") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            
        </asp:FormView>
        <asp:ObjectDataSource ID="ODS02" runat="server" DataObjectTypeName="ASPNETSample03.Pessoa" InsertMethod="AddPessoa" SelectMethod="GetPessoas" TypeName="ASPNETSample03.SampleContext"></asp:ObjectDataSource>
    
        <br />
    
    </div>
    </form>
</body>
</html>
