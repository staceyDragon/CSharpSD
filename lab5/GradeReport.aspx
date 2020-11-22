<%
    Dim xml
    xml = Server.CreateObject("Microsoft.XMLDOM")
    xml.async = false
    xml.load(Server.MapPath("gradeReport.xml"))

    Dim xsl
    xsl = Server.CreateObject("Microsoft.XMLDOM")
    xsl.async = false
    xsl.load(Server.MapPath("gradeReport.xsl"))

    Response.Write(xml.transformNode(xsl))
%>
