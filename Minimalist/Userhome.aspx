<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userhome.aspx.cs" Inherits="Minimalist.Userhome" %>


 <%--login button--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="imgbtn"  width="50px" height="50px" />
    <asp:Label ID="lblusr" runat="server" Text="Label" CssClass="lbl"></asp:Label>
</asp:Content>

  <%--explore button--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <asp:Button ID="Button1" runat="server" Text="Explore Contests" class="exbtn" OnClick="Button1_Click"/> 
    <asp:Button ID="Button2" runat="server" Text="Add photo" class="btn1" OnClick="Button2_Click" />
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <%--datalist button--%>
   
     <div class="back"> 
    <asp:Panel ID="Panel1" runat="server" Visible="False">
         
         <h2 class="display-1 text-black text-center">Popular Contest</h2>
        <hr />  
        <asp:DataList ID="DataList1" runat="server" CellSpacing="5" RepeatColumns="4">
            <ItemTemplate>
                <table class="table table-hover table-dark " style="width: 99%; height: 370px;">
                    <tr>
                        <td colspan="2" class="text-center">
                            <asp:Image ID="Image1" runat="server" class="img-fluid" ImageUrl='<%# Eval("photo") %>'  />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 306px">

                            <asp:Label ID="Label5" runat="server" CssClass="labl" Text="Category :"></asp:Label>

                            <asp:Label ID="Label1" runat="server" CssClass="labl" class="la" Text='<%# Eval("cname") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label6" runat="server" CssClass="labl" Text="End Date :"></asp:Label>
                            <asp:Label ID="Label3" runat="server" CssClass="labl"  Text='<%# Eval("edate") %>'></asp:Label>
                            <br />  
                            <asp:Label ID="Label4" runat="server" CssClass="labl" Text='<%# Eval("cdescript") %>'></asp:Label>
                            <br />
                            <asp:LinkButton ID="lnk_participate"  runat="server" CommandArgument='<%# Eval("id") %>' OnCommand="lnk_participate_Command">Get in</asp:LinkButton>
                            <br />
                            <asp:LinkButton ID="lnk_view" runat="server">View entries</asp:LinkButton>
                        </td>
                        <td class="text-end">
                            <asp:Label ID="Label7" runat="server" Text="Entries"></asp:Label>
                            <asp:Label ID="Label2" runat="server" CssClass="labl" Text='<%# Eval("participants") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

     


    </asp:Panel>
       </div>
</asp:Content>


