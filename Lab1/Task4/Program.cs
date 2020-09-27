using System;

namespace Task4
{
    class Program
    {
        const int DEFAULT_SIZE = 10;

        public static void Main() {
            int[] intArr = new int[DEFAULT_SIZE];
            Console.WriteLine("Enter {0} numbers", DEFAULT_SIZE);
            for (int i = 0; i < intArr.Length; i++) {
                intArr[i] = Convert.ToInt32(Console.ReadLine());
            }

            int maxNum = 0;
            int maxNumCount = 0;
            for (int i = 0; i < intArr.Length; i++) {
                if (intArr[i] > maxNum) {
                    maxNumCount = 0;
                    maxNum = intArr[i];
                    maxNumCount++;
                } else if (intArr[i] == maxNum) {
                    maxNum = intArr[i];
                    maxNumCount++;
                }
            }
            Console.WriteLine("MaxNumCount: {0}", maxNumCount);
            Console.WriteLine("MaxNum indexes: ");
            for (int i = 0; i < intArr.Length; i++) {
                if (intArr[i] == maxNum) {
                    Console.Write("{0} ", i);
                }
            }

            Array.Sort(intArr);
            Array.Reverse(intArr);
            Console.WriteLine("\nReverse sorted array:");
            foreach (var i in intArr) {
                Console.Write("{0} ", i);
            }

            Console.WriteLine("\nPlease enter x: ");
            int x = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Please enter y: ");
            int y = Convert.ToInt32(Console.ReadLine());
            int z = 1;
            for (int i = 0; i < intArr.Length; i++) {
                if (intArr[i] > x && intArr[i] <= y)
                    z *= intArr[i];
            }
            Console.WriteLine("Z: {0}", z);
        }
    }
}
