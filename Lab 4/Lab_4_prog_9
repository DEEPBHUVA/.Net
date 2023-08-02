using System;
using System.Collections.Generic;
using System.Diagnostics.Tracing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Enter a string : ");
            string str = Console.ReadLine();
    
            List<String> wordList = str.Split(" ").ToList();
            string longestWord = "";
    
            foreach (String word in wordList)
            {
                if (longestWord.Length < word.Length)
                {
                    longestWord = word;
                }
            }
            Console.WriteLine("Longest word is : "+longestWord);
        }
    }
}
