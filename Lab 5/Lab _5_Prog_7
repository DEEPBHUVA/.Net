using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
delegate void TrafficDel();

namespace Lab_5
{
    internal class TrafficSignal
    {
        static void Main(string[] args)
        {
            TrafficDel t1 = new TrafficDel(Yellow);
            TrafficDel t2 = new TrafficDel(Green);
            TrafficDel t3 = new TrafficDel(Red);

            t1.Invoke();
            t2.Invoke();
            t3.Invoke();
        }

        public static void Yellow()
        {
            Console.WriteLine("Yellow Light Signal To Get Ready");
        }
        public static void Green()
        {
            Console.WriteLine("Green Light Signal To Go");
        }
        public static void Red()
        {
            Console.WriteLine("Red Light Signal To Stop");
        }
    }
}
