<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contestform.aspx.cs" Inherits="Minimalist.Contestform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
     <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <link rel="stylesheet" href="styles/form.css"/>
    <link rel="stylesheet" href="https://cdn.tutorialjinni.com/intl-tel-input/17.0.8/css/intlTelInput.css"/>
    <script src="https://cdn.tutorialjinni.com/intl-tel-input/17.0.8/js/intlTelInput.min.js"></script>
 


</head>
<body>
    <form id="contact" runat="server">
        <div class="container">
        
            <h1>Registration Form</h1>
            <h3>Fill the form below and press the submit button!</h3>
            <div class="row">
                <!-- first column -->
                <div class="column">                        
                    <fieldset>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" placeholder="Contest name*"></asp:TextBox>
                    </fieldset>
                    <fieldset>
                      <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" placeholder="Contest description*" TextMode="MultiLine"></asp:TextBox>
                    </fieldset>
                    <fieldset>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" placeholder="stard dat*" ></asp:TextBox>
                    </fieldset>
                    <fieldset>
                        <input type="text" placeholder="Date of birth *" name="date" onfocus="(this.type = 'date')" required autofocus>
                    </fieldset>
                    <!-- adding all country code list -->
                    <fieldset>
                        <input type="text" placeholder="Phone number *" name="phone" id="phone" required autofocus>
                    </fieldset>
                </div>
                <!-- second column -->
                <div class="column">
                    <fieldset>
                        <p>What is your gender?</p>
                        <div class="radio">
                            <input type="radio" id="male" name="gender" required>
                            <label for="male">Male</label>
                        </div>
                        <div class="radio">
                            <input type="radio" id="female" name="gender" required>
                            <label for="female">Female</label>
                        </div>
                    </fieldset>
                    <fieldset>
                        <label for="idCard">Enter your ID Card in given formate.</label>
                        <div class="idCard">
                            <input type="text" name="idCard" pattern="[0-9]{5}" placeholder="#####" maxlength="5"> _
                            <input type="text" name="idCard" pattern="[0-9]{7}" placeholder="#######" maxlength="7"> _ 
                            <input type="text" name="idCard" pattern="[0-9]{1}" placeholder="#" maxlength="1">
                        </div>
                    </fieldset>
                    <fieldset>
                        <p>Upload File</p>
                        <input type="file" id="file" required>
                    </fieldset>
                </div>
            </div>
            <!-- submit button -->
            <fieldset>
                <button type="submit" id="button">Submit Now</button>
            </fieldset>
      
    </div>
 
    </form>


</body>
</html>
