---
## Front matter
lang: ru-RU
title: Лабораторная работа №1
subtitle: Работа с Git
author:
  - Белов Максим Сергеевич
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 09 февраля 2024

## i18n babel
babel-lang: russian
babel-otherlangs: english
mainfont: Arial
monofont: Courier New
fontsize: 12pt

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---

# Цель работы

Вспомнить работу с системой контроля версий git.

# Выполнение лабораторной работы

Создадим файл с именем hello.html.

![hello.html](image/1.png){ #fig:001 width=70% }

##

Добавим в hello.html различные теги, добавим в репозиторий и закоммитим изменения.

![Список изменений (git log)](image/2.png){ #fig:002 width=70% }

##

![Теги версий](image/3.png){ #fig:003 width=70% }

##

Попытаемся создать структуру нашего репозитория. Давайте перенесем
страницу в каталог lib.

![git mv](image/4.png){ #fig:004 width=70% }

##

Создадим клон репозитория. В нашем рабочем каталоге теперь должно быть два репозитория: оригинальный репозиторий и клонированный.


![Клон репозитория](image/5.png){ #fig:005 width=70% }

##

Научимся извлекать изменения из общего репозитория.

![Извлечение изменений](image/6.png){ #fig:006 width=70% }


# Вывод

В ходе работы я вспомнил основные принципы работы с системой контроля версий git.

