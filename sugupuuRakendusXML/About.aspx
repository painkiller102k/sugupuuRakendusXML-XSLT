<%@ Page Title="Elisaveta 2 sugupuu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="sugupuuRakendusXML.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <div>
            <asp:xml runat="server" DocumentSource="~/ElizavetaSugupuu.xml" TransformSource="~/sugupuuParing.xslt"></asp:xml>
        </div>
    </main>
</asp:Content>
