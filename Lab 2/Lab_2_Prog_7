using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter N : ");
            int n = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter R : ");
            int r = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine(n + "P" + r + " = "
                        + nPr(n, r));
        }

        static int fact(int n)
        {
            if (n <= 1)
                return 1;
            return n * fact(n - 1);
        }

        static int nPr(int n, int r)
        {
            return fact(n) / fact(n - r);
        }


    }
}
