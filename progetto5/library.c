#include "library.h"

plista get_labels (plista h, FILE* fileI) {
	int MAX_RIGA = 200;
	char I[MAX_RIGA];

	h = predefined_labels (h);
	
	int riga = 0;

	while (fgets (I, MAX_RIGA - 1, fileI) != NULL) {		//Finché posso leggere
		int instruction_type = detect_instruction_type (I);

		if (instruction_type == 2) {
			rimuovi_parentesi (I);

			h = insert (h, I, riga);
		} else if (instruction_type == 0 || instruction_type == 1)
			riga = riga + 1;
	}

	//print_lista (h);

	return (h);
}


int traduci_file (FILE* fileI, FILE* fileO) {
	int global_check = 1; //0 -> false, N\{0} -> True

	plista LABELS, VARIABLES;
	LABELS = NULL;
	VARIABLES = NULL;
	
	LABELS = get_labels (LABELS, fileI);
	rewind(fileI); //Ritorno a legegre dall'inzio del file

	int MAX_RIGA = 200;
	char I[MAX_RIGA];

	int var_counter = 16;

	coppiaS* CONV = genera_conversioni (); //Puntatore con tutte le conversioni
	
	while (fgets (I, MAX_RIGA - 1, fileI) != NULL) {		//Finché posso leggere
		
		//printf ("LEN: %d\n", strlen(tmp));
		//printf ("tmp: %s\n", tmp);
		

		if (1) { //Dovrei controllare che la stringa non sia vuota
			int instruction_type = detect_instruction_type (I);

			char O[17];
			O[16] = '\0';
			
			strcpy (O, "2222222222222222");

			if (instruction_type == 0) {

				VARIABLES = traduci_A_instruction (I, O, LABELS, VARIABLES, &var_counter);
				
			} else if (instruction_type == 1) {
				
				traduci_C_instruction (I, O, CONV);

			} else if (instruction_type == 2) {
				//printf ("Labels rilevata\n");
			} else if (instruction_type == 3) {
				//printf ("Commento rilevato\n");
			} else {
				//printf ("ERRORE: Qualcosa è andato storto durante la detection dell'instruction\n");
			}
			
			if (O[0] != '2')
				fprintf (fileO, "%s\n", O);
		}
	}

	return (global_check);
}

// 0 -> A, 1 -> C, 2 -> Labels, 3 -> Commento, -1 -> Errore
int detect_instruction_type (char I[]) {
	int return_value = -1;
	char t;
	int i = 0;

	while (return_value == -1 && i < strlen (I)) {
		t = I[i];

		if (t == '@') {
			return_value = 0;
		} else if (t == 'A' || t == 'M' || t == 'D' || t == '0') {
			return_value = 1;
		} else if (t == '(') {
			return_value = 2;
		} else if (t == '/') {
			return_value = 3;
		}
		i = i + 1;
	}

	return (return_value);
}

plista traduci_A_instruction (char I[], char O[], plista LABELS, plista VARIABLES, int* var_counter) {
	O[0] = '0'; //Essendo una A in. inizia sempre con uno zero

	int len = strlen (I);

	//traduco in numero da stringa:
	int i = 0;
	int n = 0;
 
	//Trovo la posizione dell'inzio dell'istruzione
	while (I[i] != '@')
		i = i + 1;

	i = i + 1;

	if (I[i] >= '0' && I[i] <= '9') { //Se è una semplice a instrution e non una labels

		while (I[i] != '\n' && I[i] != '\0' && I[i] != '\r') {
			n = n * 10;
			n = n + (int) I[i] - (int) '0';
			i = i + 1;
		}
	} else {
		//Devo cercare nelle labels se trovo quella corrispondente, se no è una variabile e le devo risolvere
		int j = i;

		char tmp[MAX_LABEL];
		tmp[0] = '\0';

		//Calcolo dove finisce la labels o la variabile
		while (I[j] != ' ' && I[j] != '\t' && I[j] != '\r' && I[j] != '\n')
			j = j + 1;

		strcat (tmp, I); //Concatena l'istruzione con tmp
		tmp[j] = '\0'; //Faccio in modo che la fine della stringa coincida con la fine della labels

		for (int j = 0; j < strlen(I) - i; j++) //Tolgo tutti i caratteri prima della labels
			tmp[j] = tmp[j + i];

		//printf ("tmp: %s\n", tmp);

		n = get_val(LABELS, tmp); //Controllo se la label è un JMP o è predefinita
		
		if (n == -1)
			n = get_val(VARIABLES, tmp); //Controllo se l'ho già definita come variabile
		
		if (n == -1) {
			n = *var_counter;
			*var_counter = *var_counter + 1;

			VARIABLES = insert (VARIABLES, tmp, n);
		}
	}
		
	dec_to_stringBin (n, O);

	return (VARIABLES);
}

void traduci_C_instruction (char I[], char O[], coppiaS* CONV) {
	O[0] = '1'; O[1] = '1'; O[2] = '1'; //I primi 3 bit di una C in. sono sempre a 1
	O[3] = '\0';
	
	//L'idea è di cercare dentro O tutte le possibili stringe e poi concatenare i risulati con strcat();
	
	coppiaS *COMP, *DEST, *JUMP;
	COMP = CONV;
	DEST = CONV + 18 + 10 - 1;
	JUMP = CONV + 18 + 10 + 8 - 1;

	//int there_is_equal = is_in_string (I, "=", 0 , strlen(I)); //Vedo se c'è un = -> cioè se c'è un campo dest

	int lim_equal = 0;
	int lim_semicolon = strlen(I);
	
	int i = 0;

		//trovo la posizione dell'=
		int flag = 0;

		while (i < strlen (I) && flag == 0) {
			if (I[i] == '=')
				lim_equal = i;
			else if (I[i] == ';' || I[i] == '/') {
				flag = 1;
				lim_semicolon = i;
			}
			i++;
		}
		//lim_equal mi dice la posizione dell'=

	
	//COMP
	int tradotta = 0;
	i = 0;

	COMP = DEST - 1; //Devo farlo al contrario per evitare di tradurre solo dei pezzi
		
	while (i < 18 + 10 && tradotta == 0) {

		if (is_in_string (I, COMP->first, lim_equal, lim_semicolon)) {
			strcat (O, COMP->second);
			tradotta = 1;
		} else {
			i = i + 1;
			COMP--;
		}
	}

	//DEST
	i = 0;
	tradotta = 0;
	DEST = JUMP - 1; //Devo tradurre al contrario
	
	while (i < 8 && tradotta == 0) {
		 
		if (is_in_string (I, DEST->first, 0, lim_equal)) {
			strcat (O, DEST->second);
			tradotta = 1;
		} else {
			i = i + 1;
			DEST--;
		}
	}

	if (tradotta == 0) {
		strcat (O, "000");
	}
	
	//JUMP
	i = 0;
	tradotta = 0;
	
	while (i < 8 && tradotta == 0) {
		 
		if (is_in_string (I, JUMP->first, lim_semicolon, strlen(I))) {
			strcat (O, JUMP->second);
			tradotta = 1;
		} else {
			i = i + 1;
			JUMP++;
		}
	}

	if (tradotta == 0) {
		strcat (O, "000");
	}
}
