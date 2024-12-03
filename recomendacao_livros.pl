livro('1984', ficcao, politica).
livro('Sapiens', historia, ciencia).
livro('O Pequeno Príncipe', autoajuda, reflexao).
livro('Dom Casmurro', literatura, classico).
livro('Senhor dos Anéis', fantasia, aventura).

recomendar(Titulo, Genero, Interesse) :-
    livro(Titulo, Genero, Interesse).

recomendacao :-
    write('Informe o gênero de interesse: '),
    read_line_to_string(user_input, GeneroInput), % Lê a entrada como string
    atom_string(Genero, GeneroInput), % Converte para átomo
    write('Informe o tópico de interesse: '),
    read_line_to_string(user_input, InteresseInput), % Lê o tópico de interesse
    atom_string(Interesse, InteresseInput), % Converte para átomo
    encontrar_livros(Genero, Interesse).

encontrar_livros(Genero, Interesse) :-
    (   recomendar(Titulo, Genero, Interesse) ->
        format('Livro recomendado: ~w~n', [Titulo]);
        write('Nenhum livro encontrado.\n')
    ).
