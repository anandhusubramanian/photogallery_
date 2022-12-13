<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addcontest.aspx.cs" Inherits="Minimalist.Addcontest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add contest</title>

    <link rel="stylesheet" href="styles/login.css" />

    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css" />
    <link rel="stylesheet" href="assets/css/templatemo-snapx-photography.css" />
    <link rel="stylesheet" href="assets/css/owl.css" />
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <link rel="stylesheet" href="styles/Site1master.css" />
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
                                <asp:ImageButton ID="ImageButton1" runat="server"  CssClass="imgbtn" width="50px" height="50px" />
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



        <section>

            <div class="form">
                <div class="title">Welcome</div>
                <div class="subtitle">Let's create your account!</div>

              

                <div class="input-container ic2">
                    <asp:TextBox ID="txt_cont_name" runat="server" class="input" type="text" placeholder="Contest name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Name is Mandatory" ControlToValidate="txt_cont_name" CssClass="validate"></asp:RequiredFieldValidator>
                </div>

                <div class="input-container ic2">
                    <asp:TextBox ID="txt_description" runat="server" class="input" type="text" placeholder="Contest Description" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Description required" class="validate" ControlToValidate="txt_description"></asp:RequiredFieldValidator>
                </div>

                <div class="input-container ic2">
                    <asp:TextBox ID="txt_duration" runat="server" class="input" type="text" placeholder="Contest duration in days" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*please add duration" class="validate" ControlToValidate="txt_duration" CssClass="validate"></asp:RequiredFieldValidator>
                </div>

                <div class="input-container ic2">

                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="input" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*cover image required" class="validate" ControlToValidate="FileUpload1" CssClass="validate"></asp:RequiredFieldValidator>
                </div>
                <br />
                <div>
                    <p>Agree to the terms and conditions 
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="" class="check" AutoPostBack="True" /></p>

                </div>


                <asp:Button ID="Button1" runat="server" Text="Submit" class="submit" OnClick="Button1_Click" />
            </div>

        </section>
    </form>

</body>
</html>
