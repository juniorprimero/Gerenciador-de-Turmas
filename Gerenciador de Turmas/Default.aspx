<%@ Page Title="Gerenciamento" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Gerenciador_de_Turmas._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="aupGridA" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:GridView runat="server" ID="grdA" ShowHeader="true" AutoGenerateColumns="false" HeaderStyle-BackColor="#088dcd" HeaderStyle-ForeColor="White">
                <EmptyDataTemplate>
                    <div style="padding: 10px 10px">
                        <center>
                                Sem lançamentos
                            </center>
                    </div>
                </EmptyDataTemplate>
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="Nome" ItemStyle-Width="12em" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="nota1" HeaderText="Nota Prova 1" ItemStyle-Width="8em" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="nota2" HeaderText="Nota Prova 2" ItemStyle-Width="8em" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="nota3" HeaderText="Nota Prova 3" ItemStyle-Width="8em" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="nota4" HeaderText="Nota Prova Final" ItemStyle-Width="8em" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="aprovado" HeaderText="Situação" ItemStyle-Width="8em" ItemStyle-HorizontalAlign="Center" />
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdatePanel runat="server" ID="aupGridB" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:GridView runat="server" ID="grdB">
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdatePanel runat="server" ID="aupGridC" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:GridView runat="server" ID="grdC">
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
