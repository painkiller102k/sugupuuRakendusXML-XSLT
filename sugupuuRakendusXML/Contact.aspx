<%@ Page Title="Martin Sugupuu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="sugupuuRakendusXML.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Martin Sugupuu</h2>


                <div>
            <asp:xml runat="server" DocumentSource="~/martinSugupuu.xml" TransformSource="~/martinSugupuu.xslt"></asp:xml>
        </div>


    </main>
</asp:Content>
