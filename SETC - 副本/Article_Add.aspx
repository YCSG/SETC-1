<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Article_Add.aspx.cs" Inherits="Article_Add" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Make sure the path to CKEditor is correct. -->
<script type="text/javascript" src="ckeditor201507/ckeditor.js"></script>

<div class="clear"></div>
<asp:Label ID="RandomID" runat="server" Text="" Visible="false"></asp:Label>
<asp:Label ID="IDLabel" runat="server" Text="" Visible="false"></asp:Label>
<asp:Timer ID="Timer1" OnTick="Timer1_Tick" runat="server" Interval="2000" Enabled="false" />
<div id="CurrentPosition">��ǰλ�ã�<a href="Article_Man.aspx">���¹���</a> >> <a href="#">����������</a></div>
<p>&nbsp;</p>

<table width="100%" align="left" id="RegistTable">
    <tr><td width="120" align="center"><asp:Button ID="Button1" runat="server" Text=" ����ݸ� " CssClass="Button" onclick="Button1_Click" /></td>
    <td width="200" align="left">        
        <asp:Button ID="Button3" runat="server" Text=" �������� " CssClass="Button" onclick="Button3_Click" />
        
    </td>
    <td width="120" align="left"><asp:Button ID="Button2" runat="server" Text=" ����Ԥ�� " CssClass="Button" onclick="Button2_Click" Visible="false" />&nbsp;</td>
    <td width="200">&nbsp;</td>
    </tr>
    <tr height="4px">
    <td width="120">&nbsp;</td>
    <td align="left" colspan="3"><asp:Label ID="ResultLabel" runat="server" 
            Font-Bold="True" ForeColor="#00CC00"></asp:Label></td>    
    </tr>
    <tr><td width="120">���±��⣺</td>
    <td width="300" align="left" colspan="3"><asp:TextBox ID="TitleTB" runat="server" MaxLength="30" CssClass="TextBox" Width="560"></asp:TextBox></td>
    
    </tr>    
    <tr><td width="120">&nbsp;</td>
    <td align="left" colspan="3"><div id="div4" style="font-size:12px;color:#999;"> ���±��⣬���𳬹�20���ַ�</div></td>    
    </tr>
    <tr><td width="120">���·��ࣺ</td>
    <td width="200" align="left">       
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <asp:DropDownList ID="Cats" runat="server" Height="24" AutoPostBack="True" 
            onselectedindexchanged="Cats_SelectedIndexChanged">
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:DropDownList ID="Subs" runat="server" Height="24">
        </asp:DropDownList>
        </ContentTemplate>
        </asp:UpdatePanel>
    </td>
    <td align="left" colspan="2">��������: &nbsp; <asp:TextBox ID="Orders" runat="server" CssClass="TextBox" Text="1"></asp:TextBox>
        <span id="div1" style="font-size:12px;color:#999;">�����ö�������ֵ��><asp:Label ID="MaxOrders" runat="server" Text="0"></asp:Label></span>
        </td>
    </tr>
    <tr><td width="120">&nbsp;</td>
    <td align="left" colspan="3"><div id="div2" style="font-size:12px;color:#999;"> </div></td>    
    </tr>    
    <tr><td>�������ڣ�</td><td>
        <asp:TextBox ID="CDT_TextBox" runat="server" CssClass="TextBox"></asp:TextBox>
        </td>
        <td colspan="2">���°汾��&nbsp; <asp:RadioButtonList ID="RadioButtonList1" 
                runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem Value="���Ժ��ֻ��汾" Selected="True">���Ժ��ֻ�  </asp:ListItem>
            <asp:ListItem>����  </asp:ListItem>
            <asp:ListItem>�ֻ�  </asp:ListItem>
            </asp:RadioButtonList>
        
        </td>    
    </tr>
    <tr><td width="120">&nbsp;</td>
    <td align="left" colspan="3"><div id="div3" style="font-size:12px;color:#999;"> </div></td>    
    </tr>
    <tr>
    <td align="left" colspan="4">        
        <asp:TextBox ID="Editor1" runat="server" TextMode="MultiLine" />
        <script type="text/javascript">
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            var editor = CKEDITOR.replace('<%= Editor1.ClientID %>',{height:"600px"});                    
        </script>
    </td>
    </tr>   
    <tr><td colspan="4">&nbsp;</td>      
    </tr>    

        
    </table>
<div class="clear"></div>
</asp:Content>

