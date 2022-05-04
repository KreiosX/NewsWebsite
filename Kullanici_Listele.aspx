<%@ Page Title="" Language="C#" MasterPageFile="~/sistemSablonu.master" AutoEventWireup="true" CodeFile="Kullanici_Listele.aspx.cs" Inherits="Kullanici_Listele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<style type="text/css">
		.auto-style3 {
			width: 71px;
			height: 27px;
		}
		.auto-style4 {
			width: 107px;
			height: 27px;
		}
		.auto-style7 {
			height: 27px;
		}
		.auto-style8 {
			height: 27px;
			width: 40px;
		}
		.auto-style9 {
			width: 40px;
		}
		.auto-style10 {
			text-align: center;
			width: 40px;
		}
		.auto-style11 {
			width: 74px;
			height: 27px;
		}
		.auto-style12 {
			width: 126px;
			height: 27px;
		}
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaBasligi" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" Runat="Server">

	 <div class="clearfix">
		  <h3 ng-show="editForm">Kullanıcı Düzenle</h3>
      </div>
      <table class="table table-striped">
        <thead>
          <tr>
			<th class="auto-style8">ID</th>
            <th class="auto-style4">Kullanıcıadı</th>
            <th class="auto-style3" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ad</th>
            <th class="auto-style11">Soyad</th>
            <th class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email</th>
			  <th class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Şifre</th>
			  <th class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kullanıcı Türü</th>
			   
          </tr>
        </thead>
        <tbody class="text-center">
          <tr >
			
			  <td class="auto-style9">

				<div>
           <asp:Repeater ID="Rpt2" runat="server" OnItemCommand="Rpt2_ItemCommand" >
           
			   <ItemTemplate>
           <tbody class="text-center " >
			  


		    <td ><%# Eval("id")%>             </td>			    
            <td> <%# Eval("kullaniciAdi")%>  </td>
            <td> <%# Eval("adi")%>   </td>
            <td> <%# Eval("soyadi")%>   </td>
            <td> <%# Eval("email")%>     </td>
            <td> <%# Eval("sifre")%>    </td>
			<td> <%# Eval("kullanici_tur")%>    </td>
            <td>
              <button class="btn btn-primary">Düzenle</button>
              </td>

			    <td> 
              <asp:LinkButton ID="lnkSil" runat="server" class="btn btn-primary" CommandArgument='<%# Eval("Id") %>' CommandName="sil" Text="Sil"></asp:LinkButton>
            </td>
		   </ItemTemplate>
           </asp:Repeater>
        </div>
			  </td>

          </tr>
          <tr class="text-left">
            <td class="auto-style10"></td>
            <td colspan="7"></td>
          </tr>
			 
        </tbody>
      </table>


</asp:Content>

