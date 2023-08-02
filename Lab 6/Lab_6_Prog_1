using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
delegate void Calc(double a, double b);

namespace Lab_5
{
    internal class Calculator
    {
        static void Main(string[] args)
        {
            Calc c1 = new Calc(addition);
            Calc c2 = new Calc(subtraction);
            Calc c3 = new Calc(multiplication);
            Calc c4 = new Calc(division);

            Console.WriteLine("Enter Number : ");
            double a = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Enter Number : ");
            double b = Convert.ToDouble(Console.ReadLine());

            Console.WriteLine("Enter Choice : ");
            char choice = Convert.ToChar(Console.ReadLine());
            switch (choice)
            {
                case '+':
                    addition(a, b);
                    break;

                case '-':
                    subtraction(a, b);
                    break;

                case '*':
                    multiplication(a, b);
                    break;

                case '/':
                    division(a, b);
                    break;
            }





        }

        public static void addition(double a, double b)
        {
            Console.WriteLine("Addition : " + (a + b));
        }

        public static void subtraction(double a, double b)
        {
            Console.WriteLine("Substraction : " + (a - b));
        }

        public static void multiplication(double a, double b)
        {
            Console.WriteLine("Multiplication : " + (a * b));
        }

        public static void division(double a, double b)
        {
            Console.WriteLine("Division : " + (a / b));
        }
    }
}
