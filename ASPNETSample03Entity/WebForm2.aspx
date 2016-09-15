<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ASPNETSample03Entity.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idCidade" 
            DataSourceID="EntityDataSource1" ForeColor="#333333" GridLines="None" 
            PageSize="5" Width="403px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="descricao" HeaderText="descricao" SortExpression="descricao" />
                <asp:BoundField DataField="sigla" HeaderText="sigla" SortExpression="sigla" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="Del" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Excluir" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="Sel" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Excluir" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Link" SelectText="Edit" ShowSelectButton="true"/>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
            ConnectionString="name=Sample001Entities" DefaultContainerName="Sample001Entities" 
            EnableDelete="True" EnableFlattening="False" 
            EnableInsert="True" 
            EnableUpdate="True" EntitySetName="Cidades">
        </asp:EntityDataSource>

        <asp:FormView ID="FormView1" runat="server" DataKeyNames="idCidade" 
            DataSourceID="EntityDataSource2" DefaultMode="Insert" 
            OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
            <EditItemTemplate>
                idCidade:
                <asp:Label ID="idCidadeLabel1" runat="server" Text='<%# Eval("idCidade") %>' />
                <br />
                descricao:
                <asp:TextBox ID="descricaoTextBox" runat="server" Text='<%# Bind("descricao") %>' />
                <br />
                sigla:
                <asp:TextBox ID="siglaTextBox" runat="server" Text='<%# Bind("sigla") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                &nbsp;<br />descricao:
                <asp:TextBox ID="descricaoTextBox" runat="server" Text='<%# Bind("descricao") %>' />
                <br />
                sigla:
                <asp:TextBox ID="siglaTextBox" runat="server" Text='<%# Bind("sigla") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                idCidade:
                <asp:Label ID="idCidadeLabel" runat="server" Text='<%# Eval("idCidade") %>' />
                <br />
                descricao:
                <asp:Label ID="descricaoLabel" runat="server" Text='<%# Bind("descricao") %>' />
                <br />
                sigla:
                <asp:Label ID="siglaLabel" runat="server" Text='<%# Bind("sigla") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <!-- Data Source 01 -->
        <br />

         <asp:EntityDataSource ID="EntityDataSource2" runat="server" 
            ConnectionString="name=Sample001Entities" DefaultContainerName="Sample001Entities" 
            EnableDelete="True" EnableFlattening="False" 
            EnableInsert="True" 
            EnableUpdate="True" EntitySetName="Cidades"
            Where="it.idCidade = @idcidade">
             <WhereParameters>
                 <asp:ControlParameter ControlID="GridView1" Name="idCidade" PropertyName="SelectedValue"  Type="Int32"/>
             </WhereParameters>
        </asp:EntityDataSource>
    
    </div>
    </form>
</body>
</html>
