using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_3
{
    class Student
    {
        public int EnrollmentNumber;
        public String StudentName;
        public int Semester;
        public double CPI;
        public double SPI;


        public void getStudentDetails()
        {
            Console.WriteLine("Enter Enrollment Number : ");
            EnrollmentNumber = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter Student Name : ");
            StudentName = (Console.ReadLine());
            Console.WriteLine("Enter Semester : ");
            Semester = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter CPI : ");
            CPI = Convert.ToDouble(Console.ReadLine());
            Console.WriteLine("Enter SPI : ");
            SPI = Convert.ToDouble(Console.ReadLine());

        }
        public void displayStudentDetails()
        {
            Console.WriteLine("Enrollment Number : " + EnrollmentNumber);
            Console.WriteLine("Student Name : " + StudentName);
            Console.WriteLine("Semester : " + Semester);
            Console.WriteLine("CPI : " + CPI);
            Console.WriteLine("SPI : " + SPI);
        }
    }
    class StudentData
    {
        static void Main(string[] args)
        {
            Student s = new Student();
            s.getStudentDetails();
            s.displayStudentDetails();

        }
    }
}
