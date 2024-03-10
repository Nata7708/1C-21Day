﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
		"ВЫБРАТЬ
		|	ЗаработнаяПлатаФактическийПериодДействия.Сотрудник КАК Сотрудник,
		|	ЗаработнаяПлатаФактическийПериодДействия.ВидРасчета КАК ВидРасчета,
		|	ЗаработнаяПлатаФактическийПериодДействия.ПериодДействияНачало КАК ПериодДействияНачало,
		|	ЗаработнаяПлатаФактическийПериодДействия.ПериодДействияКонец КАК ПериодДействияКонец
		|ИЗ
		|	РегистрРасчета.ЗаработнаяПлата.ФактическийПериодДействия КАК ЗаработнаяПлатаФактическийПериодДействия";
	
	РезультатЗапроса = Запрос.Выполнить();
	
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	
	Пока ВыборкаДетальныеЗаписи.Следующий() Цикл
		Точка = ДиаграммаГанта.УстановитьТочку(ВыборкаДетальныеЗаписи.Сотрудник);
		Серия = ДиаграммаГанта.УстановитьСерию(ВыборкаДетальныеЗаписи.ВидРасчета);
		Значение = ДиаграммаГанта.ПолучитьЗначение(Точка, Серия);
		Интервал = Значение.Добавить();
		Интервал.Начало = ВыборкаДетальныеЗаписи.ПериодДействияНачало;
		Интервал.Конец = ВыборкаДетальныеЗаписи.ПериодДействияКонец;
	КонецЦикла;
	

КонецПроцедуры
