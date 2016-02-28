using System;
using System.Threading;
using System.Threading.Tasks;

namespace helloWorld.Console
{
    public class Program
    {
        public static void Main(string[] args)
        {
            while (true)
            {
                System.Console.WriteLine("Hello World {0}", DateTime.Now.Ticks);
                Thread.Sleep(1000);
            }
        }
    }
}
