<%@ Page Language="C#" Inherits="lab4.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
	<title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
	    <script type="text/javascript">
            function loadXMLDoc(dname) {
                var xmlDoc;
                if (window.ActiveXObject) {
                    xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
                    xmlDoc.async = "false";
                }
                else if (window.XMLHttpRequest) {
                    xmlDoc = new window.XMLHttpRequest();
                    xmlDoc.open("GET", dname, false);
                    xmlDoc.send("");
                    return xmlDoc.responseXML.documentElement;
                }
                else {
                    alert('Your browser cannot run the script');
                }
                xmlDoc.async = false;
                xmlDoc.load(dname);
                return (xmlDoc);
            }
            xmlDoc = loadXMLDoc("gradeReport.xml");
            x = xmlDoc.getElementsByTagName("student");
            y = xmlDoc.getElementsByTagName("grade");
            z = xmlDoc.getElementsByTagName("subject")[0].childNodes[0].nodeValue;
            date = xmlDoc.getElementsByTagName("date")[0].childNodes[0].nodeValue;
            examiner = xmlDoc.getElementsByTagName("examiner")[0].childNodes[0].nodeValue;

            document.write("Date: " + date + "<br/>");
            document.write("Examiner: " + examiner + "<br/>");
            document.write("<br/>");
            
            for (i = 0; i < x.length; i++) {
                if (y[i].childNodes[0].nodeValue == "3") {
                    var grade = "Satisfactory";
                }
                else if (y[i].childNodes[0].nodeValue == "4") {
                    var grade = "Good";
                }
                else if (y[i].childNodes[0].nodeValue == "5") {
                    var grade = "Excellent";
                }
                document.write("Number " + (i + 1) + ":<br/>" + "Student: " + x[i].childNodes[0].nodeValue + "<br/>Subject: " + z + "<br/>Grade: " + grade + "<br/>");
                document.write("<br/>");
            }
        </script>
    </form>
</body>
</html>
