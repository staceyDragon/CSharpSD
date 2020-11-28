using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Lab7Form
{
    // добавлено пространство имен localhost
    using localhost;
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        // обработка события нажатия кнопки
        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            // создание объекта, связанного с веб-службой
            WebService1 w = new WebService1();
            // выбор подходящей функции веб-службы и взаимодействие с ней
            string ans = w.Day();
            // отображение результата в форме
            label2.Text = ans;
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            // создание объекта, связанного с веб-службой
            WebService1 w = new WebService1();
            // выбор подходящей функции веб-службы и взаимодействие с ней
            string ans = w.DayOfWeek();
            // отображение результата в форме
            label2.Text = ans;
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            // создание объекта, связанного с веб-службой
            WebService1 w = new WebService1();
            // выбор подходящей функции веб-службы и взаимодействие с ней
            string ans = w.DayOfYear();
            // отображение результата в форме
            label2.Text = ans;
        }
    }
}
