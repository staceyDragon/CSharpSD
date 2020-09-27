using System;

namespace Task1
{
    public class Program
    {
        static double GetVal()
        {
            double val;
            string raw_val = Console.ReadLine();
            try
            {
                val = Convert.ToDouble(raw_val);
                return val;
            }
            catch (FormatException)
            {
                Console.WriteLine("Unable to convert '{0}' to a Double.", raw_val);
                System.Environment.Exit(1);
            }
            catch (OverflowException)
            {
                Console.WriteLine("'{0}' is outside the range of a Double.", raw_val);
                System.Environment.Exit(1);
            }

            return 0;
        }
        public static void Main()
        {
            Console.WriteLine("Enter a");
            double a = GetVal();
            if (a == 0)
            {
                Console.WriteLine("Wrong a");
                System.Environment.Exit(1);
            }

            Console.WriteLine("Enter b");
            double b = GetVal();

            Console.WriteLine("Enter c");
            double c = GetVal();

            double d = b * b - 4 * a * c;
            if (d < 0)
            {
                Console.WriteLine("No roots");
            }
            else if (d == 0)
            {
                double x = (-1 * b - Math.Sqrt(d)) / 2 * a;
            }
            else
            {
                double x1 = (-1 * b - Math.Sqrt(d)) / (2 * a);
                double x2 = (-1 * b + Math.Sqrt(d)) / (2 * a);
                Console.WriteLine("Roots: '{0}' and '{1}'", x1, x2);
            }
        }
    }
}
