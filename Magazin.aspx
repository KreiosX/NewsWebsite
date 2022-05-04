<%@ Page Title="" Language="C#" MasterPageFile="~/Haber.master" AutoEventWireup="true" CodeFile="Magazin.aspx.cs" Inherits="Magazin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container-fluid paddding mb-5">
    <div class="row mx-0">
        <div class="col-md-6 col-12 paddding animate-box" data-animate-effect="fadeIn">
            <div class="fh5co_suceefh5co_height"><img src="images/1.jpg" alt="img"/>
                <div class="fh5co_suceefh5co_height_position_absolute"></div>
                <div class="fh5co_suceefh5co_height_position_absolute_font">
                    <div class=""><a href="#" class="color_fff"> <i class="fa fa-clock-o"></i>&nbsp;&nbsp;26 Mayıs 2018
                    </a></div>
                    <div class=""><a href="single.html" class="fh5co_good_font"> After all is said and done, more is said than done </a></div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row">
                <div class="col-md-6 col-6 paddding animate-box" data-animate-effect="fadeIn">
                    <div class="fh5co_suceefh5co_height_2"><img src="images/1.jpg" alt="img"/>
                        <div class="fh5co_suceefh5co_height_position_absolute"></div>
                        <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                            <div class=""><a href="#" class="color_fff"> <i class="fa fa-clock-o"></i>&nbsp;&nbsp;26 Mayıs 2018 </a></div>
                            <div class=""><a href="single.html" class="fh5co_good_font_2"> After all is said and done, <br>more is said than done </a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-6 paddding animate-box" data-animate-effect="fadeIn">
                    <div class="fh5co_suceefh5co_height_2"><img src="images/1.jpg" alt="img"/>
                        <div class="fh5co_suceefh5co_height_position_absolute"></div>
                        <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                            <div class=""><a href="#" class="color_fff"> <i class="fa fa-clock-o"></i>&nbsp;&nbsp;26 Mayıs 2018 </a></div>
                            <div class=""><a href="single.html" class="fh5co_good_font_2"> After all is said and done... </a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-6 paddding animate-box" data-animate-effect="fadeIn">
                    <div class="fh5co_suceefh5co_height_2"><img src="images/1.jpg" alt="img"/>
                        <div class="fh5co_suceefh5co_height_position_absolute"></div>
                        <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                            <div class=""><a href="#" class="color_fff"> <i class="fa fa-clock-o"></i>&nbsp;&nbsp;26 Mayıs 2018</a></div>
                            <div class=""><a href="single.html" class="fh5co_good_font_2"> After all is said and done, more is said than done </a></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-6 paddding animate-box" data-animate-effect="fadeIn">
                    <div class="fh5co_suceefh5co_height_2"><img src="images/1.jpg" alt="img"/>
                        <div class="fh5co_suceefh5co_height_position_absolute"></div>
                        <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                            <div class=""><a href="#" class="color_fff"> <i class="fa fa-clock-o"></i>&nbsp;&nbsp;26 Mayıs 2018 </a></div>
                            <div class=""><a href="single.html" class="fh5co_good_font_2"> After all is said and done, more is said... </a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid pb-4 pt-4 paddding">
    <div class="container paddding">
        <div class="row mx-0">
            <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">HABERLER</div>
                </div>
                <asp:Repeater ID="rp_Haberler" runat="server">
                    <ItemTemplate>
                <div class="row pb-4">
                    <div class="col-md-5">
                        <div class="fh5co_hover_news_img">
                            <div class="fh5co_news_img"><img src='<%#Eval("haber_foto") %>' alt=""></div>
                        </div>
                    </div>
                    <div class="col-md-7 animate-box">
                        <a class="fh5co_magna py-2">
                         <asp:Label ID="lbl_haber" runat="server" Text='<%#Eval("haber_baslik") %>'></asp:Label>
                       </a>
                        <div class="fh5co_consectetur">
                         <asp:Label ID="Label2" runat="server" Text='<%#Eval("haber_icerik") %>'></asp:Label>
                        </div>
                    </div>
                </div>
                        </ItemTemplate>
                    </asp:Repeater>
            </div>
            <div class="col-md-3 animate-box" data-animate-effect="fadeInRight">

                <div class="clearfix"></div>

                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom pt-3 py-2 mb-4">Köşe yazıları</div>
                </div>
                <asp:Repeater ID="rp_KoseYazilari" runat="server">
                    <ItemTemplate>
                <div class="row pb-3">
                    <div class="col-7 paddding">
                        <a class="fh5co_magna py-2">
                         <asp:Label ID="lbl_haber" runat="server" Text='<%#Eval("koseYazisi") %>'></asp:Label>
                       </a>
                        <div class="most_fh5co_treding_font_123"><asp:Label ID="Label2" runat="server" Text='<%#Eval("eklenmeTarihi") %>'></asp:Label></div>
                    </div>
                </div>
                        </ItemTemplate>
                    </asp:Repeater>
            </div>
        </div>
    </div>
</div>
</asp:Content>

