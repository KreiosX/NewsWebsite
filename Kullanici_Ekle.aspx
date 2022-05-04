<%@ Page Title="" Language="C#" MasterPageFile="~/sistemSablonu.master" AutoEventWireup="true" CodeFile="Kullanici_Ekle.aspx.cs" Inherits="Kullanici_Ekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<style type="text/css">
		th {
  text-align: center;
}

.glyphicon {
  margin-right: 10px;
}

.crud-table {
  max-width: 800px;
  padding: 40px 0;
}

.form-alert {
  margin-top: 10px;
}

.form-inline {
  margin-bottom: 20px;
}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaBasligi" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="icerik" Runat="Server">
	<div class="container crud-table" ng-app="myApp" ng-controller="namesCtrl">
		<div class="crude-form__wrapper" ng-show="triggerForm">
        
        <h3 ng-show="addForm">Kullanıcı Ekle</h3>
          <div class="form-group">
            <label for="kullaniciAdi">Kullanıcı Adı</label>
            <asp:TextBox class="form-control" id="txt_kullaniciAdi" type="text" placeholder="Kullanıcıadı" runat="server"></asp:TextBox>
            <%--<div class="form-alert alert alert-danger" ng-show="userForm.name.$invalid &amp;&amp; userForm.name.$touched">Please input name</div>--%>
          </div>
          <div class="form-group">
            <label for="ad">Ad</label>
			<asp:TextBox class="form-control" id="txt_ad" type="text" placeholder="Ad" runat="server"></asp:TextBox>
			  <%--<div class="form-alert alert alert-danger" ng-show="userForm.country.$invalid &amp;&amp; userForm.country.$touched">Please input user country</div>--%>
          </div>
          <div class="form-group">
            <label for="soyad">Soyad</label>
			  <asp:TextBox class="form-control" id="txt_soyad" type="text" placeholder="Soyad" runat="server"></asp:TextBox>

<%--            <div class="form-alert alert alert-danger" ng-show="userForm.salary.$invalid &amp;&amp; userForm.salary.$touched"><span ng-show="userForm.salary.$error.number">Please input valid number</span><span ng-show="userForm.salary.$error.min">Please input salary greater than 1</span><span ng-show="userForm.salary.$error.required">Please input salary</span></div>--%>
          </div>

		  <div class="form-group">
            <label for="sifre">Şifre</label> 
			  <asp:TextBox class="form-control" id="txt_sifre" placeholder="Şifre"  runat="server"></asp:TextBox>

<%--            <div class="form-alert alert alert-danger" ng-show="userForm.salary.$invalid &amp;&amp; userForm.salary.$touched"><span ng-show="userForm.salary.$error.number">Please input valid number</span><span ng-show="userForm.salary.$error.min">Please input salary greater than 1</span><span ng-show="userForm.salary.$error.required">Please input salary</span></div>--%>
          </div>
          <div class="form-group">
            <label for="email">Email</label>
			  <asp:TextBox id="txt_Email" type="email" name="email" placeholder="Email" class="form-control" runat="server"></asp:TextBox>
          </div>

			<div class="form-group">
            <label for="tur">Kullanıcı Türü</label><br />

		<asp:DropDownList ID="DropDownList1" class="form-control"  runat="server">
                  <asp:ListItem Value="Admin"> Admin </asp:ListItem>
                  <asp:ListItem Value="Yazar"> Yazar </asp:ListItem>
                  <asp:ListItem Value="Editör"> Editör </asp:ListItem>
               </asp:DropDownList>

          </div>

<%--          <div class="form-alert alert alert-danger" ng-show="userForm.email.$invalid &amp;&amp; userForm.email.$touched"><span ng-show="userForm.email.$error.email">Please input valid email</span><span ng-show="userForm.email.$error.required">Please input email	</span></div>--%>
<%--          <div class="form-alert alert alert-danger" ng-show="emailExisted">  This email has been registerd by other user</div>--%>
		  <asp:Button ID="btn_kaydet" class="btn btn-primary" runat="server" Text="Kayıt et!" OnClick="btn_kaydet_Click" /> <br />
		  <asp:Literal ID="ltr_mesaj" runat="server"></asp:Literal>
      </div>
     
      
    </div>
</asp:Content>

