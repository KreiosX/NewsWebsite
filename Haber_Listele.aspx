<%@ Page Title="" Language="C#" MasterPageFile="~/sistemSablonu.master" AutoEventWireup="true" CodeFile="Haber_Listele.aspx.cs" Inherits="Haber_Listele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sayfaBasligi" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="icerik" Runat="Server">
	 <div class="clearfix">
		  <h3 ng-show="editForm">Haber Düzenle</h3>
      </div>
      <table class="table table-striped">
        <thead>
          <tr>
			<th>ID</th>
            <th>Haberin kategorisi</th>
            <th>Haberin Başlığı</th>
            <th>Haberin İçeriği</th>
            <th>Haberin Tarihi</th>
          </tr>
        </thead>
        
          <tr >
			  <td>

				<div>
           <asp:Repeater ID="Rpt1" runat="server" >
           <ItemTemplate>
           <tbody class="text-center " >
			   <td>
              <button class="btn btn-primary">Düzenle</button>
              </td>

			    <td> 
              <button class="btn btn-danger">Sil</button>
            </td> 


		    <td ><%# Eval("id")%>             </td>			    
            <td> <%# Eval("haber_kategori")%> </td>
            <td> <%# Eval("haber_baslik")%>   </td>
            <td> <%# Eval("haber_icerik")%>   </td>
            <td> <%# Eval("haber_foto")%>     </td>
            <td> <%# Eval("haber_tarih")%>    </td>
            
		   </ItemTemplate>
           </asp:Repeater>
        </div>
			  </td>

			  
          </tr>
          <tr class="text-left">
            <td class="text-center"></td>
            <td colspan="6"></td>
          </tr>
        </tbody>
      </table>
</asp:Content>

