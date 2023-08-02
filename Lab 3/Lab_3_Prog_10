using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Salary s = new Salary();
            s.basicSalary();
            s.getSalary();

            s.displaySalary();
            s.grossSalary();
        }
    }

    class Employee
    {
        public string name;
        public double basic_salary;

        public void basicSalary()
        {
            Console.WriteLine("Enter Employee Name : ");
            this.name = Console.ReadLine();
            Console.WriteLine("Enter Basic Salary : ");
            this.basic_salary = Convert.ToDouble(Console.ReadLine());
        }
    }

    interface Gross
    {
        void grossSalary();
    }
    class Salary : Employee, Gross
    {
        public double hra;
        public double ta;
        public double da;

        public void getSalary()
        {
            Console.WriteLine("Enter HRA : ");
            this.hra = Convert.ToDouble(Console.ReadLine());
            Console.WriteLine("Enter TA : ");
            this.ta = Convert.ToDouble(Console.ReadLine());
            Console.WriteLine("Enter DA : ");
            this.da = Convert.ToDouble(Console.ReadLine());
        }
        public void grossSalary()
        {
            Console.WriteLine("Gross Salary : " + (basic_salary + basic_salary * hra + ta + basic_salary * da));
        }
        public void displaySalary()
        {
            Console.WriteLine("Salary : " + (basic_salary + hra + ta + da));
        }
    }
}
