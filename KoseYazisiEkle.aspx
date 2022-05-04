<%@ Page Title="" Language="C#" MasterPageFile="~/sistemSablonu.master" AutoEventWireup="true" CodeFile="KoseYazisiEkle.aspx.cs" Inherits="KoseYazisiEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaBasligi" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" Runat="Server">
    <div class="container crud-table" ng-app="myApp" ng-controller="namesCtrl">
		<div class="crude-form__wrapper" ng-show="triggerForm">
        
        <h3 ng-show="addForm">Köşe yazısı Ekle</h3>
		  <div class="form-group">
            <label for="sifre">Kategori adı</label> 
			  <asp:TextBox class="form-control" id="txt_koseYazisi" placeholder="Köşe yazısı yazın..."  runat="server"></asp:TextBox>
          </div>
            <asp:Button ID="btn_koseYazisi" class="btn btn-primary" OnClick="btn_koseYazisi_Click" runat="server" Text="Köşe yazısı ekle" />
            <asp:Literal ID="ltr_mesaj" runat="server"></asp:Literal>
      </div>
    </div>
</asp:Content>

