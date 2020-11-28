using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Lab6
{
    /// <summary>
    /// Сводное описание для WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Чтобы разрешить вызывать веб-службу из скрипта с помощью ASP.NET AJAX, раскомментируйте следующую строку. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        [WebMethod (Description = "Текущий день недели")]
        public string DayOfWeek()
        {
            return DateTime.Now.DayOfWeek.ToString();
        }

        [WebMethod (Description = "Текущий день в месяце (число)")]
        public string Day()
        {
            return DateTime.Now.Day.ToString();
        }

        [WebMethod (Description = "Текущий день в году (число)")]
        public string DayOfYear()
        {
            return DateTime.Now.DayOfYear.ToString();
        }
    }
}
