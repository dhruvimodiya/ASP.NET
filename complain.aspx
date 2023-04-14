<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="complain.aspx.cs" Inherits="cmms.complain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href=".css"/>
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

    * {
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins',sans-serif;
        margin-left: 0;
        margin-right: 0;
        margin-top: 0;
    }

    nav {
        position: fixed;
        background: #1b1b1b;
        width: 100%;
        padding: 10px 0;
        z-index: 12;
        margin-top: -1025px;
    }

        nav .menu {
            max-width: 1250px;
            margin: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
        }

    .menu .logo a {
        text-decoration: none;
        color: #fff;
        font-size: 35px;
        font-weight: 600;
    }

    .menu ul {
        display: inline-flex;
    }

        .menu ul li {
            list-style: none;
            margin-left: 7px;
        }

            .menu ul li:first-child {
                margin-left: 0px;
            }

            .menu ul li a {
                text-decoration: none;
                color: #fff;
                font-size: 18px;
                font-weight: 500;
                padding: 8px 15px;
                border-radius: 5px;
                transition: all 0.3s ease;
            }

                .menu ul li a:hover {
                    background: #fff;
                    color: black;
                }

    body {
        height: 1080px;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 10px;
        background-image: url("abc.jpg");
    }

    .container {
        max-width: 750px;
        width: 100%;
        background-color: #fff;
        padding: 25px 30px;
        border-radius: 5px;
        box-shadow: 0 5px 10px rgba(0,0,0,0.15);
        margin-bottom: -9px;
    }

        .container .title {
            font-size: 30px;
            font-weight: 500;
            position: relative;
        }

            .container .title::before {
                content: "";
                position: absolute;
                left: 0;
                bottom: 0;
                height: 3px;
                width: 30px;
                border-radius: 5px;
                background: linear-gradient(135deg, #888888, #080808);
            }

    .content form .user-details {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin: 20px 0 12px 0;
    }

    form .user-details .input-box {
        margin-bottom: 15px;
        width: calc(100% / 2 - 20px);
        height: 125px;
    }

    form .input-box span.details {
        display: block;
        font-weight: 500;
        margin-bottom: 5px;
    }

    .user-details .input-box input {
        height: 45px;
        width: 100%;
        outline: none;
        font-size: 16px;
        border-radius: 5px;
        padding-left: 15px;
        border: 1px solid #ccc;
        border-bottom-width: 2px;
        transition: all 0.3s ease;
    }

    .user-details .input-box textarea {
        height: 80px;
        width: 630px;
        outline: none;
        font-size: 16px;
        border-radius: 5px;
        padding-left: 15px;
        border: 1px solid #ccc;
        border-bottom-width: 2px;
        transition: all 0.3s ease;
    }

    .user-details .input-box input:focus,
    .user-details .input-box input:valid {
        border-color: #FF7F50;
    }

    form .gender-details .gender-title {
        font-size: 20px;
        font-weight: 500;
    }

    form .category {
        display: flex;
        width: 80%;
        margin: 14px 0;
        justify-content: space-between;
    }

        form .category label {
            display: flex;
            align-items: center;
            cursor: pointer;
        }

            form .category label .dot {
                height: 18px;
                width: 18px;
                border-radius: 50%;
                margin-right: 10px;
                background: #BEBEBE;
                border: 5px solid transparent;
                transition: all 0.3s ease;
            }

    #dot-1:checked ~ .category label .one,
    #dot-2:checked ~ .category label .two {
        background: #101010;
        border-color: #BEBEBE;
    }

    form input[type="radio"] {
        display: none;
    }

    form .button {
        height: 45px;
        margin: 35px 0
    }

        form .button input {
            height: 100%;
            width: 1000%;
            border-radius: 5px;
            border: none;
            color: #fff;
            font-size: 18px;
            font-weight: 500;
            letter-spacing: 1px;
            cursor: pointer;
            transition: all 0.3s ease;
            background: linear-gradient(135deg, #888888, #080808);
        }

            form .button input:hover {
                /* transform: scale(0.99); */
                background: linear-gradient(-135deg, #888888, #080808);
            }

    @media(max-width: 584px) {
        .container {
            max-width: 100%;
        }

        form .user-details .input-box {
            margin-bottom: 15px;
            width: 100%;
        }

        form .category {
            width: 100%;
        }

        .content form .user-details {
            max-height: 300px;
            overflow-y: scroll;
        }

        .user-details::-webkit-scrollbar {
            width: 5px;
        }
    }

    @media(max-width: 459px) {
        .container .content .category {
            flex-direction: column;
        }
    }
</style>
<body>
        <nav >
    <div class="menu">
      <div class="logo">
        <a href="#">CodingLab</a>
      </div>
      <ul>
        <li><a href="index.aspx">Home</a></li>
        <li><a href="logout.aspx">logout</a></li>
       <li><a href="viewdata.aspx"><% Response.Write(Session["email"]); %></a></li>
      </ul>
    </div>
  </nav>
  <div class="container">
    <div class="title">Complaint Here</div>
    <div class="content">
     <form id="form1" runat="server">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Request By  :<% Response.Write(Session["email"]); %> </span>
              <asp:TextBox ID="name" runat="server" name="name"></asp:TextBox> 
          </div>

          <div class="input-box">
            <span class="details">Date</span>
              <asp:TextBox ID="txtdate" runat="server"  TextMode="Date"></asp:TextBox>
          </div>

          <div class="input-box">
            <span class="details">Email :</span>
              <asp:TextBox ID="email" runat="server" name="email"></asp:TextBox> 
           </div>
            <div class="input-box">
              <span class="details">Please Indicte Number Of Infraction</span>
              <asp:DropDownList ID="time" runat="server"  cssclass="details"  Width="92px">
                  <asp:ListItem Selected="True">First Time </asp:ListItem>
                  <asp:ListItem>Second Time</asp:ListItem>
                  <asp:ListItem>Third Time</asp:ListItem>
                  <asp:ListItem>More than five time</asp:ListItem>
              </asp:DropDownList>

          </div>
          
      </div>
             <asp:label runat="server"><strong>Device Type</strong></asp:label>  
         <asp:CheckBoxList ID="device" runat="server">
             <asp:ListItem>Desktop</asp:ListItem>
             <asp:ListItem>Laptop</asp:ListItem>
             <asp:ListItem>PC</asp:ListItem>
             <asp:ListItem>MAC Book</asp:ListItem>
         </asp:CheckBoxList>
       <div class="user-details">
          <div class="input-box">
            <span class="details">When did your problem start?
                <asp:TextBox ID="problem" runat="server" TextMode="MultiLine"></asp:TextBox>
              </span></div>
        
        <div class="user-details">
          <div class="input-box">
            <span class="details">What were you doing when the problem occurred? 
                 <asp:TextBox ID="proc" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
    </div>
    
        <div class="button">
            <asp:Button ID="btnsubmit" runat="server"  Text="submit" OnClick="btnsubmit_Click1"  />
        </div>
        <a href="viewdata.aspx">view Data</a>
      </form>
  </div>
  <!-- js -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css" />

<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success")
		{
			swal("congrats","Your Complain has been Registerd","success");
		}
</script>

</body>
</html>
