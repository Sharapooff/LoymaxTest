using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LoymaxTestApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Конечно же можно использовать готовое решение в виде Stack<T>, но используем свою реализацию
            var stack = new Stack<int>();
            for (int i = 0; i < 10; i++)
            stack.Push(i);
            Console.WriteLine($"Стек содержит {stack.Count} элементов");

            for (int i = 0; i < 5; i++)
            {
                var item = stack.Pop();//получаем последние 5 элементов с их удалением
                Console.WriteLine($"Получен и удален элемент: {item}");
            }
            Console.WriteLine($"Стек содержит {stack.Count} элементов");
            Console.ReadLine();
                
        }

    }
}

/// <summary>
/// Пространство имен отдельно для класса, описывающего стэк
/// </summary>
namespace Stack
{
    /// <summary>
    /// Класс описывающий Стэк
    /// </summary>
    /// <typeparam name="T">Тип элементов Стэка</typeparam>
    class Stack<T>
    {
        /// <summary>
        /// Коллекеция объектов <T>
        /// </summary>
        List<T> _items = new List<T>();
        /// <summary>
        /// Количество объектов <T> в коллекции
        /// </summary>
        public int Count => _items.Count;
        /// <summary>
        /// Добавление элемента <T> в Стэк
        /// </summary>
        /// <param name="item">Добавляемый элемент <T></param>
        /// <returns>bool (true - Ok)</returns>
        public bool Push(T item)
        {
            try
            {
                if (item != null)
                {
                    _items.Add(item);
                    return true;
                }
                else return false;
            }
            catch (Exception ex)
            {
                //logger(ex.Message);
                return false;
            }

        }
        /// <summary>
        /// Получение поледнего добавленного элемента Стека, с его удалением
        /// </summary>
        /// <returns>Последний добдавленный элемент Стека</returns>
        /// <exception cref="Exception">Item is null</exception>
        public T Pop()
        {
            var item = _items.LastOrDefault();
            if (item == null)
                throw new Exception("Стек пуст!");
            _items.Remove(item);
            return (item);
        }
    }
}