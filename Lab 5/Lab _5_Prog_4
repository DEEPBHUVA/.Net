using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_5
{
    internal class Program
    {
        static void Main(string[] args)
        {
            RBI rBI = new RBI();
            HDFC hDFC = new HDFC();
            SBI sBI = new SBI();
            ICICI iCICI = new ICICI();

            rBI.calculateIntrest();
            hDFC.calculateIntrest();
            sBI.calculateIntrest();
            iCICI.calculateIntrest();

        }
    }

    class RBI
    {
        public virtual void calculateIntrest()
        {
            Console.WriteLine("Intrest In RBI");
        }
    }
    class HDFC : RBI
    {
        override public void calculateIntrest()
        {
            Console.WriteLine("Intrest In HDFC");
        }
    }
    class SBI : RBI
    {
        override public void calculateIntrest()
        {
            Console.WriteLine("Intrest In SBI");
        }
    }
    class ICICI : RBI
    {
        override public void calculateIntrest()
        {
            Console.WriteLine("Intrest In ICICI");
        }
    }

}
