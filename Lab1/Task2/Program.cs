using System;

namespace Task2
{
    class Program
    {
        static int factorial(int a)
        {
            if (a == 0)
                return 1;
            else
                return a * factorial(a - 1);
        }

        public static void Main()
        {
            Console.WriteLine("Enter number:");
            string raw_input = Console.ReadLine();
            int val = 0;
            try
            {
                val = Convert.ToInt32(raw_input);
            }
            catch (FormatException)
            {
                Console.WriteLine("Unable to convert '{0}' to a Int32.", raw_input);
                System.Environment.Exit(1);
            }
            catch (OverflowException)
            {
                Console.WriteLine("'{0}' is outside the range of a Int32.", raw_input);
                System.Environment.Exit(1);
            }

            Console.WriteLine("Factorial: " + factorial(val));
        }
    }
}
