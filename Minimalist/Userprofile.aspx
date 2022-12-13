<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userprofile.aspx.cs" Inherits="Minimalist.Userprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>

    <meta charset="utf-8" />
    <meta name="author" content="templatemo" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet" />


    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css" />
    <link rel="stylesheet" href="assets/css/templatemo-snapx-photography.css" />
    <link rel="stylesheet" href="assets/css/owl.css" />
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <link rel="stylesheet" href="styles/usrpage.css" />

</head>
<body>
    <form id="form1" runat="server">
                <header class="header-area header-sticky" style="left: 0; right: 0; top: 0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- ***** Logo Start ***** -->
                            <a href="index.aspx" class="logo">
                                <img src="assets/images/logo.png" alt="SnapX Photography Template"/>
                            </a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li><a href="index.aspx" class="active">Home</a></li>
                                <li class="has-sub">
                                    <a href="javascript:void(0)">Photos</a>
                                    <ul class="sub-menu">
                                        <li><a href="contests.html">Contests</a></li>
                                        <li><a href="contest-details.html">Single Contest</a></li>
                                    </ul>
                                </li>
                                <li><a href="categories.html">Categories</a></li>
                                <li><a href="users.html">Users</a></li>
                            </ul>
                            <div class="border-button">
                                <asp:ImageButton ID="ImageButton1" runat="server"  CssClass="imgbtn" Width="50px" Height="50px"  />
                                <asp:Label ID="lblusr" runat="server" Text="Label" CssClass="lbl"></asp:Label>
                            </div>
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav> 
                    </div>
                </div>
            </div>
        </header>
        <div class="division1">
            <div class="row">
                
                <div class="col-8 actv">   

                    <h3 class="text-center"> Your Active Contests</h3>
                </div>
                <%-- <div class="col-4 actv">
                    <h3 class="text-center">Profile</h3>
                </div> --%>
                

                <div class="col-8 clr"  height="80vh">
                   
                    <div class="center1">   
                        <asp:Button ID="Button3" runat="server" Text="NEXT CONTEST" CssClass="nxt" OnClick="Button3_Click" CausesValidation="False" />
                    </div>
                    <asp:DataList ID="DataList1" runat="server" CssClass="center">
                        <ItemTemplate>
                            <table class="table table-hover table-dark ">
                                <tr>
                                    <td colspan="2">
                                        <asp:ImageButton ID="ImageButton3" runat="server" Width="300px" ImageUrl='<%# Eval("photo") %>' Height="300px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text="Contest name : "></asp:Label>
                                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("cname") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="Label7" runat="server" Text="Ends in :"></asp:Label>
                                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("edate") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="Label9" runat="server" Text="Add photo"></asp:Label>
                                        <br />
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("id") %>' OnCommand="LinkButton2_Command">Add</asp:LinkButton>
                                        <br />
                                        <asp:LinkButton ID="LinkButton1" runat="server">View Entries</asp:LinkButton>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            
                        </ItemTemplate>

                    </asp:DataList>
                  
                   
                                  

                    <asp:Label ID="Labelph" runat="server" Text="please add a photo below"></asp:Label>
                    <asp:FileUpload ID="FileUpload2" runat="server" cssclass="form-control" Width="90%" />
                  
                   
                                  

                </div>


                
                <div class="col-4" height="90vh" align-items="center"   >
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="250px" Width="250px"  CssClass="imgbtn1" ImageUrl="~/assets/images/author.jpg" />
                    <asp:Button ID="Button4" runat="server" Text="Update profile" CssClass="nxt uptext" OnClick="Button4_Click" />
                    <br />
                    <asp:Label ID="Label13" runat="server" Text="profile updated successfully" Visible="False" class="text-success" ></asp:Label>
                    <div>
                        <asp:Label ID="Label2" runat="server" Text="Name" CssClass="lablprof" Font-Size="25px"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="Label1" runat="server" Text="Update profile pic" CssClass="lablprof" Font-Size="19px"></asp:Label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" Width="80%" />
                        <asp:Button ID="Button5" runat="server" Text="change photo" CssClass="nmbtn" OnClick="Button5_Click" CausesValidation="False"  />
                    </div>

                    <div>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Username" CssClass="lablprof" Font-Size="19px"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblnm" runat="server" Text="Username" CssClass="lablprof" Font-Size="25px"></asp:Label>
                        <asp:Button ID="Button2" runat="server" Text="change username" CssClass="nmbtn" OnClick="Button2_Click" />
                    </div>
                    <div>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control uptext" Visible="false" placeholder="Enter here"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*please enter here" ControlToValidate="TextBox1" cssclass="validate"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Email" CssClass="lablprof" Font-Size="19px"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblemail" runat="server" Text="email@email" CssClass="lablprof" Font-Size="25px"></asp:Label>
                        <asp:Button ID="Button1" runat="server" Text="change email" CssClass="nmbtn" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
