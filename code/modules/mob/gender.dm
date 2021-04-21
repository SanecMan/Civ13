
/var/list/gender_datums = list()

/hook/startup/proc/populate_gender_datum_list()
	for (var/type in typesof(/datum/gender))
		var/datum/gender/G = new type
		gender_datums[G.key] = G
	return TRUE

/datum/gender
	var/key  = "plural"
	var/He   = "They"
	var/he   = "they"
	var/His  = "Their"
	var/his  = "their"
	var/him  = "them"
	var/has  = "have"
	var/is   = "are"
	var/does = "do"

	var/Rukey  = "они"
	var/RuHe   = "Они"
	var/Ruhe   = "они"
	var/RuHis  = "Их"
	var/Ruhis  = "их"
	var/Ruhim  = "им"
	var/Ruhas  = "держать" //А так же иметь обладать и прочее
	var/Ruis   = "моё"
	var/Rudoes = "делает"

/datum/gender/male
	key  = "male"

	He   = "He"
	he   = "he"
	His  = "His"
	his  = "his"
	him  = "him"
	has  = "has"
	is   = "is"
	does = "does"

	RuHe   = "Он"
	Ruhe   = "он"
	RuHis  = "Его"
	Ruhis  = "его"
	Ruhim  = "ему"
	Ruhas  = "у него"
	Ruis   = "мой" //ну это пиздец конечно и ебля с правилами ага да пусть на первое время так
	Rudoes = "делает" //тут надо бы добавить падежи

/datum/gender/female
	key  = "female"

	He   = "She"
	he   = "she"
	His  = "Her"
	his  = "her"
	him  = "her"
	has  = "has"
	is   = "is"
	does = "does"

	RuHe   = "Она"
	Ruhe   = "она"
	RuHis  = "Её" //Если буква "ё" решит сломать билд - удалить
	Ruhis  = "её"
	Ruhim  = "ей"
	Ruhas  = "у неё"
	Ruis   = "моя"
	Rudoes = "делает"

/datum/gender/neuter
	key = "neuter"

	He   = "It"
	he   = "it"
	His  = "Its"
	his  = "its"
	him  = "it"
	has  = "has"
	is   = "is"
	does = "does"

	RuHe   = "Это"
	Ruhe   = "это"
	RuHis  = "Это" //its множественное а it не множественное, тут проще вписать это
	Ruhis  = "это"
	Ruhim  = "это"
	Ruhas  = "это"
	Ruis   = "моё"
	Rudoes = "делает"
