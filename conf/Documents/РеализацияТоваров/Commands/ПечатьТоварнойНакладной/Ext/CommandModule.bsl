﻿
&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	//{{_КОНСТРУКТОР_ПЕЧАТИ(ПечатьТоварнойНакладной)
	ТабДок = Новый ТабличныйДокумент;
	ПечатьТоварнойНакладной(ТабДок, ПараметрКоманды);

	ТабДок.ОтображатьСетку = Ложь;
	ТабДок.Защита = Ложь;
	ТабДок.ТолькоПросмотр = Ложь;
	ТабДок.ОтображатьЗаголовки = Ложь;
	ТабДок.Показать();
	//}}
КонецПроцедуры

&НаСервере
Процедура ПечатьТоварнойНакладной(ТабДок, ПараметрКоманды)
	Документы.РеализацияТоваров.ПечатьТоварнойНакладной(ТабДок, ПараметрКоманды);
КонецПроцедуры
