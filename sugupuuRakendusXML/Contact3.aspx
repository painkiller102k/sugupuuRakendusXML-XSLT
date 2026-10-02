<%@ Page Title="XML REIS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="sugupuuRakendusXML.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">

        <main>
            <h2>XML REIS</h2>
                    <div>
            <asp:xml runat="server" DocumentSource="~/XMLReis.xml" TransformSource="~/ReisParing.xslt"></asp:xml>
        </div>
        </main>

        
    </main>
</asp:Content>
        