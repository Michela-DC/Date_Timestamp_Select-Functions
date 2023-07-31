Use all of the functions below, find out what they do, write a description for them here or in the comments of the code. Add a meaningful column alias CONCAT(COLUMN1, COLUMN2) AS ALIAS_NAME
1	 CONCAT(COLUMN1, COLUMN2) AS ALIAS_NAME = concatena due o più stringhe
2    LOWER(COLUMN) = trasforma in minuscolo i dati stringa della colonna selezionata
3	 UPPER(COLUMN) = trasforma in maiuscolo i dati stringa della colonna selezionata
4	 TRIM(COLUMN) = rimuovo ciò che viene indicato tra parentesi:
                    - TRIM(COLUMN) rimuove tutti i dato della colonna
                    - se specificato rimuove spazi vuoti oppure altri caratteri dall’inizio e dalla fine di una stringa
5	 LENGTH(COLUMN) = ritorna la lunghezza dei dati inseriti, ovvero da quanti caratteri è composto il dato inserito
6	 SUBSTRING(COLUMN, START, LENGTH) = recupera il numero di caratteri specificato in LENGHT partendo dallo START
7	 ROUND(COLUMN, DECIMAL_PLACES) = server per arrotondare I numeri decimali e con il numero che metto al posto di DECIMAL_PLACES specifico il numero di cifre decimali a cui voglio arrotondare
8	 DATE_ADD(COLUMN, INTERVAL EXPRESSION UNIT) = aggiunge giorni/mesi/anni alla data selezionata:
                                                  - EXPRESSION è il numero che voglio venga aggiunto
                                                  - UNIT devo specificare DAY/MONTH/YEAR
9	 DATE_SUB(COLUMN, INTERVAL EXPRESSION UNIT)= sottrae giorni/mesi/anni alla data selezionata
10	 FORMAT(COLUMN, FORMAT_STRING) = permette di formattare la data nel formato della nazione specificata
    (se intendeva DATE_FORMAT(COLUMN, FORMAT_STRING) allora serve a formattare la data nel formato indicato in FORMAT_STRING)
11	Using DATE_ADD or DATE_SUB and the following SQL SELECT NOW();
    Select your birthday by passing the result into the next item i.e. DATE_ADD(DATE_ADD(NOW(), INTERVAL 7 DAY), INTERVAL 2 MONTH) as BIRTHDAY_DATE
    If you're feeling really adventurous try to get the time to exactly midnight!


CREATE TABLE MEAL (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT,
  DATE_ON_MENU DATE
);

INSERT INTO MEAL(NAME, PRICE, CALORIES, DATE_ON_MENU)
VALUES ('Spaghetti Bolognese', 12.99, 600, "2023-07-31"),
('Grilled Chicken Sandwich', 8.99, 400, "2023-07-31"),
('Pesto Pasta', 10.99, 550, "2023-07-31"),
('Steak and Mash', 19.99, 800, "2023-07-31"),
('Sushi Platter', 15.99, 700, "2023-07-31");

SELECT
CONCAT(NAME, CALORIES) AS ALIAS_NAME,
UPPER(NAME) AS NOME_PORTATA,
LOWER(NAME) AS nome_portata,
TRIM(NAME) AS trim_name,
LENGTH(NAME) as name_length,
SUBSTRING(NAME, 2, 5),
ROUND(PRICE, 1),
DATE_ADD(DATE_ON_MENU, INTERVAL 5 DAY) AS add_to_date,
DATE_SUB(DATE_ON_MENU, INTERVAL 5 DAY) AS sub_to_date,
FORMAT(DATE_ON_MENU, 'dd-mm-yy', 'it') AS format_date_nation,
DATE_FORMAT(DATE_ON_MENU, '%d/%m/%y') AS formatted_date,
DATE_ADD(DATE_ADD(NOW(), INTERVAL 14 DAY), INTERVAL 4 MONTH) as BIRTHDAY_DATE
FROM MEAL;