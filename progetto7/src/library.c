#include "global.h"

	/* VARIABILI GLOBALI */
plistai list_of_command;						//Lista con tutti i comandi della VM e il loro tipo
int JMP_counter = 0; 							//Variabile globale che mi sere per differenziare i jump nelle istruzioni eq, gt e lt
char* file_name;									//Nome del file da cui sto traducendo codice vm
char function_name [400] = "";	 	//Nome della funzione in cui sono attualmente
int index_return = 0;							//Indice che mi serve per differenziare gli indirizzi di return di varie chiamate
																	//alla stessa funzione in un unica funzione.


/* Precondizione: fileI e fileO devo essere entrambi aperti come file. Il primo in
 * lettura e il secondo in scrittura.
 *
 * Postcondizione: Preso un puntatore a file (con estensione .vm) lo traduce riga per riga e scive
 * il risultato tradotto in un file (con estensione .asm)
*/
void traduci (FILE* fileI, FILE* fileO) {

	char I [MAX_INST_LEN];	//I -> istruzione che viene letta da fileI
	char O [MAX_INST_LEN];	//O -> serie di istruzioni che vengono scritte in fileO	


	// TRADUZIONE
	while (fgets (I, MAX_INST_LEN , fileI) != NULL) {
		clean_string (I);			//Pulisco la stringa in input da commenti ed eventuali spazi iniziali
		O[0] = '\0';					//Azzero la stringa di output


		//Per una traduzione piu' mirata capisco di che tipo è
		//l'istrzione e la traduco di conseguenza
		int I_type = detect_instruction (I);

		if (I_type == 0)
			translate_instruction_of_type_arithm (I, O);
		else if (I_type == 1)
			translate_instruction_of_type_memory (I, O);
		else if (I_type == 2)
			translate_instruction_of_type_program (I, O);
		else if (I_type == 3)
			translate_instruction_of_type_function (I, O);

		//Se ho riconosciuto l'istruzione e non ci sono stati problemi 
		//durante la traduzione la scrivo sul file
		if (I_type != -1)			
			fprintf (fileO, "%s\n", O);
	}

	
}

/* Postocondizione: Presa in input una stringa restituisce
 * il tipo di comando ad essa associato:
 * 0 -> arithm
 * 1 -> memory
 * 2 -> program
 * 3 ->function
 * -1 -> se non e' stato riconosciuto
*/
int detect_instruction (char* I) {

	char tmp [15];
	tmp[0] = '\0';
	ex_next_word (I, tmp, 0);		//estrapolo solo il primo comando, non mi interessa del resto

	return ( get_type (list_of_command, tmp) );		//Cerco nella lista di comandi. -1 se non e' presente
}

/* Non volevo importare la libreria math e quindi mi sono
 * creato la mia funzione per calcolare il logaritmo in base 10 :)
 *
 * Precondizione: n >= 0
 * Postcondizione: ritorna log10 (n);
 */
int my_log10 (int n) {
	int i = 0;

	while (n >= 1) {
		n = n / 10;
		i = i + 1;
	}
	return (i - 1);
}

FILE* open_fileO (char* pathI) {
	char* pathO = (char*) malloc ( (strlen (pathI) + 5) * sizeof (char) );

	strcpy (pathO, pathI);
	
	int len = strlen (pathO);

	if (is_a_dir (pathI) == 1) {
		if (pathO [len - 1] == '/')
			pathO [len - 1] = '\0';

	} else
		pathO [len - 3] = '\0';
	
	strcat (pathO, ".asm");
	
	FILE* fileO = fopen (pathO, "w");
	
	if (fileO == NULL) {
		printf ("Impossibile aprire il file di output (%s)", pathO);
		abort ();
	}

	free (pathO);
	return (fileO);
}
