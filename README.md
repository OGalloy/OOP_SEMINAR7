# OOP_SEMINAR7
homework
Здравствуйте.

Этот код описывает программу для калькулятора комплексных чисел.

Реализован код на языке Lua. Lua не имеет встроенных объектов и классов, но может их синтетически реализовать с помощью lua table(Таблиц).

Таблицы очень похожи на объекты. Таблицы как и объект имеют состояние, поведения, поля и методы.
Классы можно реализовать с помощью метатаблиц и метометодов.

А также синтетически можно реализовать инкапсуляцию, наследование, полиморфизм, переопределение методов и создавать подобие интерфейсов.

Приватные Данные в объектах можно хранить в локальных таблицах. А публичные данные и вызов методов организовать с помощью метатаблиц и метометодов.

В проекте был реализован класс Number, его наследники: Real(Вещественное число),  Imaginary(Мнимое число).

Также создан класс Complex у которого реализаванны методы для сложения и разности комплексных чисел.
