<%@ Page Title="" Language="C#" MasterPageFile="~/sistemSablonu.master" AutoEventWireup="true" CodeFile="kategoriEkle.aspx.cs" Inherits="kategoriEkle" %>

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
        
        <h3 ng-show="addForm">Kategori Ekle</h3>
		  <div class="form-group">
            <label for="sifre">Kategori adı</label> 
			  <asp:TextBox class="form-control" id="txt_KategoriAdi" placeholder="Kategori adı"  runat="server"></asp:TextBox>
          </div>
          <div class="form-group">
            <label for="email">Kategori Link</label>
			  <asp:TextBox id="txt_KategoriLink" placeholder="Kategori Link" class="form-control" runat="server"></asp:TextBox>
          </div>
            <asp:Button ID="btn_KategoriEkle" class="btn btn-primary" runat="server" Text="Kategori Ekle" OnClick="btn_KategoriEkle_Click" />
            <asp:Literal ID="ltr_mesaj" runat="server"></asp:Literal>
      </div>
    </div>
</asp:Content>

