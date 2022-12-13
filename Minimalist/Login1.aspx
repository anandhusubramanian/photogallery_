<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="Minimalist.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
  
    <link rel="stylesheet" href="styles/login.css"/>

    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css" />
    <link rel="stylesheet" href="assets/css/templatemo-snapx-photography.css" />
    <link rel="stylesheet" href="assets/css/owl.css" />
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
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
                                <a  href="Sign.aspx" class="sign-in-up"><i class="fa fa-user"></i>Sign In/Up</a>
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


        <section>

            <div class="form">
                <div class="title">Hii..</div>
                <div class="subtitle">Please Log in</div>
                <div class="input-container ic1">
                   

                    <asp:TextBox ID="name" runat="server" class="input" type="text" placeholder="Email/Username"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Name is Mandatory" ControlToValidate="name" cssclass="validate"></asp:RequiredFieldValidator>
                </div>

                

                 <div class="input-container ic2">
                    
                    <asp:TextBox ID="password" runat="server"  class="input" placeholder="Password" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Name is Mandatory" ControlToValidate="password" cssclass="validate"></asp:RequiredFieldValidator>
                    
                     </div>
                <div> 
                     <br /> 
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="&nbspShow password" cssclass="check" AutoPostBack="True"/>
                </div>
                <div>
                    <p> Not a member! <asp:LinkButton ID="LinkButton1" runat="server" class="link" CausesValidation="False" PostBackUrl="~/Sign.aspx">SIGN UP</asp:LinkButton>for free</p>
                </div>
                
                <asp:Label ID="Label1" runat="server" Visible="true" CssClass="validate"></asp:Label>

                <asp:Button ID="Button1" runat="server" Text="Login" class="submit" OnClick="Button1_Click" />
            </div>

        </section>

    </form>
</body>
</html>
