<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title></title>
      <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
      <!-- Bootstrap 3.3.6 -->
      <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
      <!-- Font Awesome -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
      <!-- Ionicons -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
      <!-- Theme style -->
      <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
      <!-- iCheck -->
      <link rel="stylesheet" href="plugins/iCheck/square/blue.css">

      <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>
<body class="hold-transition login-page">
    <form id="form1" runat="server">
    <div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b>Admin </b>Paneli</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Lütfen Giriş Yapınızı.</p>    
      <div class="form-group has-feedback">        
        <asp:TextBox ID="txt_eposta" runat="server" class="form-control" placeholder="Kullanıcı ID"></asp:TextBox>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">        
        <asp:TextBox ID="txt_sifre" runat="server" TextMode="Password" class="form-control" placeholder="Şifre"></asp:TextBox>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
          <div class="col-xs-4">
              <div class="form-group has-feedback">
                  <asp:Image ID="Image1" runat="server" ImageUrl="~/guvenlikResmiaspx.aspx" />
              </div>
          </div>
          <div class="col-xs-8">
              <div class="form-group has-feedback">
                  <asp:TextBox ID="txt_kod" runat="server" class="form-control" placeholder="Güvenlik Kodu" data-error="Güvenlik Kodunu Giriniz." required=""></asp:TextBox>
                  <span class="glyphicon glyphicon glyphicon-picture form-control-feedback"></span>
                  <div class="help-block with-errors"></div>
              </div>
          </div>
      </div>        
    
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label> 
            <asp:CheckBox ID="chk_hatirla" runat="server" /> Beni Hatırla
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">          
            <asp:Button ID="btn_tamam" runat="server" Text="TAMAM" class="btn btn-primary btn-block btn-flat" OnClick="btn_tamam_Click" />
        </div>
        <!-- /.col -->
      </div>
    <div class="social-auth-links text-center">
      <p>- YADA -</p>
      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Facebook İle Giriş Yap</a>
      <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Google++ İle Giriş Yap
        </a>
    </div>
    <!-- /.social-auth-links -->

    <a href="#">Şifremi Unuttum</a><br>
    <a href="register.html" class="text-center">Yeni üyelik ekle</a><br /><br />
    <asp:Literal ID="ltr_mesaj" runat="server"></asp:Literal>
  </div>

  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
    </form>
</body>
</html>
