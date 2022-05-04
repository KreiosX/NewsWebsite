<%@ Page Title="" Language="C#" MasterPageFile="~/sistemSablonu.master" AutoEventWireup="true" CodeFile="Haber_Ekle.aspx.cs" Inherits="Haber_Ekle" %>

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
		<%--	////////////////////////////////////////////////////////////////////////////////////////////--%>
			   

			<h3 ng-show="addForm">Haber Ekle</h3>
			<div class="form-group">
            <label for="haber_kategori">Haberin Kategorisi </label>
                <asp:DropDownList ID="txt_haber_kategori" class="form-control"  runat="server" DataSourceID="SqlDataSource1Kategori" DataTextField="kategoriAdi" DataValueField="kategoriAdi">

                </asp:DropDownList>
            
                <asp:SqlDataSource ID="SqlDataSource1Kategori" runat="server" ConnectionString="<%$ ConnectionStrings:2016_2017_gunduzConnectionString %>" SelectCommand="SELECT [kategoriAdi], [id] FROM [kategoriler]"></asp:SqlDataSource>
            
          </div>
          <div class="form-group">
            <label for="haber_baslik">Haberin Başlığı</label>
			   
           		 <asp:TextBox class="form-control" id="txt_haber_baslik" type="text" placeholder="Haberin Başlığı" runat="server"></asp:TextBox>
            
          </div>
          <div class="form-group">
            <label for="haber_icerik">Haberin İçeriği</label>
			<asp:TextBox class="form-control" id="txt_haber_icerik" type="text" placeholder="Haberin İçeriği" runat="server"></asp:TextBox>
			  
          </div>
        <div class="form-group">
                            <label for="exampleInputFile">Resim seç</label>
                            <asp:FileUpload ID="fu_hresim" CssClass="form-control" runat="server" />
                        </div>
			<div class="form-group">
			    <asp:Label ID="Label1"  runat="server" Text=""></asp:Label>
			 <br />
          </div>

</div>
		  <asp:Button ID="btn_ekle" class="btn btn-primary"  runat="server" Text="Ekle!" OnClick="btn_ekle_Click" /> <br />
		  <asp:Literal ID="ltr_mesaj" runat="server"></asp:Literal>
</div>
			<%--	////////////////////////////////////////////////////////////////////////////////////////////--%>
	
</asp:Content>

