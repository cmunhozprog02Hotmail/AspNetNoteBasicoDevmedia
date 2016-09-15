<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pPessoas.aspx.cs" Inherits="ASPNETSample03Entity.pPessoas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtSearc" runat="server" ></asp:TextBox>
        <asp:Button ID="btnSearc" runat="server" Text="Localizar" />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idPessoa" DataSourceID="EntityDataSource1">
            <Columns>
                <asp:BoundField DataField="idPessoa" HeaderText="idPessoa" ReadOnly="True" SortExpression="idPessoa" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
                <asp:BoundField DataField="obs" HeaderText="obs" SortExpression="obs" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="idPessoa" DataSourceID="EntityDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                idPessoa:
                <asp:Label ID="idPessoaLabel1" runat="server" Text='<%# Eval("idPessoa") %>' />
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
                :
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
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                idPessoa:
                <asp:Label ID="idPessoaLabel" runat="server" Text='<%# Eval("idPessoa") %>' />
                <br />
                nome:
                <asp:Label ID="nomeLabel" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                telefone:
                <asp:Label ID="telefoneLabel" runat="server" Text='<%# Bind("telefone") %>' />
                <br />
                obs:
                <asp:Label ID="obsLabel" runat="server" Text='<%# Bind("obs") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
            ConnectionString="name=Sample001Entities" 
            DefaultContainerName="Sample001Entities" 
            EnableDelete="True" EnableFlattening="False" 
            EnableInsert="True" EnableUpdate="True" EntitySetName="Pessoas">
        </asp:EntityDataSource>
    </form>
</body>
</html>
