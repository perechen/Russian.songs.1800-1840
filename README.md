# Russian songs 1800-1840ss
Corporas of russian literary songs, folksongs and not songs at all (poetry), 19th century first half.

## Russian songs corpus

**RP_general_database.xlsx**  
A general table with different meta data on manually collected "Russian songs" (1800-1840ss), including bibliographic description, meter formula etc. It is a work-in-progress, so it's  references are not unified, some of them (for widely accessible sources) are absent and so on.

**RP_corpus_split.zip**  
Archive which contains original texts of corpus in separate .txt files. The **db_with_path.csv** (basically the general table in .csv format) contains a column, which connects every database unit with the text in **RP_corpus_split** folder. Some example on how to manually create custom stacked corpus from .csv using R could be found in **conjure_corpus_from_csv.R**. Overall design is pretty messy, but keeps things simple.  
**NB** Don't forget to put unpacked folder with .txt files in your R working directory.

## Operational corporas

Every corpus is availiable in two forms: original and lemmatized (see folders).   
To lemmatize things a [**mystem v.3.0**](https://tech.yandex.ru/mystem/) - stemmer for Russian language - was used.

1. **RP_core.txt**. "Russian song" stacked corpus, only texts considered "core" for the genre were included (383 of out 448 total)
  * ~40,000 words
2. **kireevsky.txt**. Kireyevsky collection. Basic contrastive corpora of folksongs
  * ~120,000 words
3. **sobolevsky.txt**. Sobolevsky collection. Secondary contrastive corpora of folksongs
  * ~500,000 words
4. **songbooks.txt**. Songbooks (1800-1840ss). Folksong population of largest songbooks, 19th century first half.
  * ~20,000 words
5. **ruscorpora.txt**. Russian poetry population, drawn from poetic subcorpus of [**Russian National Corpus**](http://ruscorpora.ru/search-poetic.html), first half of 19th century.
  * ~1.9M words

Semi-manual normalization was made for "Russian song" corpus and Kireyevsky collection to provide some control over extremly heterogeneous folklore texts (in terms of morphology and orthography) and biases due to lemmatization failures. 


**RUS**

# Русские песни 1800-1840-х

Корпуса "русских песен", фольклорных песен и совсем не песен (поэтический корпус), первая половина XIX в.

## Корпус "русской песни"

**RP_general_database.xlsx**  
Основная таблица с метаданными по собранным вручную "русским песням" (1800-1840-е), включает библиографическое описание, метрическую формулу и вещи подобного рода. Это незаконченный, рабочий вариант базы данных, которая еще будет пополняться: подсчеты размера не перепроверены, ссылки не унифицированы, аббревиатуры не раскрыты, многие общедоступные источники не указаны (издания песен под ред. И.Н. Розанова, В.Е. Гусева, книжки "Библиотеки поэта").

**RP_corpus_split.zip**  
Архив с текстами "русских песен" в отдельных .txt файлах. В **db_with_path.csv** (основная таблица, только в .csv) прописан путь, соединяющий каждую единицу базы данных с соответствующим текстом в папке **RP_corpus_split**. С помощью **conjure_corpus_from_csv.R** можно вручную создать единый корпус на необходимых условиях из .csv таблицы. Все вместе очень громоздко, конечно.  
**NB** Не забывайте положить распакованную папку в рабочую директорию R.

## Рабочие корпуса

Каждый корпус доступен в двух видах: исходном и лемматизованном (см. папки).  
Для лемматизации был использован [**mystem v.3.0**](https://tech.yandex.ru/mystem/).

1. **RP_core.txt**. Объединенный корпус "русских песен". Вошли тексты только с пометкой "core" (см. таблицу), принятые как центральные относительно поля жанра (383 текста из 448)
  * ~40 тыс. слов
2. **kireevsky.txt**. Собрание Киреевского. Основной контрастивный корпус фольклорной песни
  * ~120 тыс. слов
3. **sobolevsky.txt**. Собрание Соболевского. Дополнительный контрастивный корпус фольклорной песни
  * ~500 тыс. слов
4. **songbooks.txt**. Песенники (1800-1840-е). Популяция "простонародных" песен из больших сводных песенников первой половины века.
  * ~20 тыс. слов
5. **ruscorpora.txt**. Популяция русской поэзии первой половины XIX в., составленная по поэтическому подкорпусу [**НКРЯ**](http://ruscorpora.ru/search-poetic.html) 
  * ~1.9м слов

Корпус "русских песен" и собрание Киреевского были нормализованы, чтобы получить некоторый контроль над разнородной морфологией и орфографией фольклорных текстов и, таким образом, над шумом, который вносят ошибки лемматизации.
