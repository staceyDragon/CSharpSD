using System;

namespace Task3
{
    class Program
    {
        const int DEFAULT_SIZE = 4;

        public static void Main()
        {
            string[] stringArr = new string[DEFAULT_SIZE];
            Console.WriteLine("Enter {0} strings", DEFAULT_SIZE);
            for (int i = 0; i < stringArr.Length; i++)
            {
                stringArr[i] = Console.ReadLine();
            }

            Console.WriteLine("Enter string to find");
            string word = Console.ReadLine();
            bool found = false;
            for (int i = 0; i < stringArr.Length; i++)
            {
                if (stringArr[i].IndexOf(word) != -1)
                {
                    Console.WriteLine("String was found at index {0}", i);
                    found = true;
                }
            }
            if (!found)
                Console.WriteLine(-1);
        }
    }
}
