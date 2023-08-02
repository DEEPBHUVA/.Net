using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
delegate int factorial(int n);

namespace Lab_5
{
    internal class Factorial
    {
        static void Main(string[] args)
        {
            factorial f = new factorial(calculateFactorial);

            Console.Write("Enter Number : ");
            int n = Convert.ToInt32((Console.ReadLine()));

            int answer = f(n);
            Console.WriteLine("Factorial : " + answer);

        }

        public static int calculateFactorial(int n)
        {
            int fact = 1;
            for (int i = 2; i <= n; i++)
            {
                fact = fact * i;
            }
            return fact;
        }
    }
}
