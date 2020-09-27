using System;

namespace Task4
{
    class Program
    {
        const int DEFAULT_SIZE = 10;

        public static void Main() {
            int[] intArr = new int[DEFAULT_SIZE];
            Console.WriteLine("Enter {0} numbers", DEFAULT_SIZE);
            for (int i = 0; i < intArr.Length; i++)
            {
                intArr[i] = Convert.ToInt32(Console.ReadLine());
            }

            int maxNum = int.MinValue;
            int maxNumCount = 0;
            for (int i = 0; i < intArr.Length; i++) {
                if (intArr[i] >= maxNum) {
                    maxNum = intArr[i];
                    maxNumCount++;
                }
            }
            Console.WriteLine("MaxNumCount: {0}", maxNumCount);
        }
    }
}
