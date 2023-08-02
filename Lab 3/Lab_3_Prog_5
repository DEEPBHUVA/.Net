using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_3
{
    class Salary
    {
        public double TA;
        public double DA;
        public double HRA;

        public Salary()
        {
            Console.WriteLine("Enter TA ");
            TA = Convert.ToDouble(Console.ReadLine());
            DA = 10000;
            HRA = 12000;
        }

        public void calculateSalary()
        {
            Console.WriteLine("Gross Salary " + (TA + HRA + DA));
        }
    }
    class StudentData
    {
        static void Main(string[] args)
        {
            Salary s = new Salary();
            s.calculateSalary();

        }
    }
}
