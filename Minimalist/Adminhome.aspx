<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminhome.aspx.cs" Inherits="Minimalist.Adminhome" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="imgbtn" Width="50px" Height="50px" />
    <asp:Label ID="lblusr" runat="server" Text="Label" CssClass="lbl"></asp:Label>
</asp:Content>


<%--explore button--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Add Contest" class="exbtn" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Contest added successfully" Visible="False" ForeColor="#FFFF99" Height="20px"></asp:Label>

    <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" placeholder="Search.."></asp:TextBox>

    <asp:Button ID="Button2" runat="server" Text="Go" CssClass="bn" OnClick="Button2_Click" />
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="229px" Width="773px">
        <Columns>
            <asp:BoundField DataField="cname" HeaderText="Contest Name" />
            <asp:BoundField DataField="participants" HeaderText="Participants" />
            <asp:BoundField DataField="love" HeaderText="Likes" />
            <asp:BoundField DataField="sdate" HeaderText="Start Date" />
            <asp:BoundField DataField="edate" HeaderText="End Date" />
            <asp:BoundField DataField="statu" HeaderText="Status" />
            <asp:TemplateField HeaderText="Contest Status">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("id") %>' OnCommand="LinkButton2_Command">Disable/Enable</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
</asp:Content>
