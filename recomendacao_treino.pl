treino(hipertrofia) :- objetivo(ganhar_massa), experiencia(intermediario), disponibilidade(tempo_ilimitado).
treino(perda_de_peso) :- objetivo(emagrecer), experiencia(iniciantes), disponibilidade(tempo_limitado).
treino(condicionamento_fisico) :- objetivo(melhorar_condicionamento), experiencia(avancado), disponibilidade(tempo_ilimitado).

objetivo(ganhar_massa).
objetivo(emagrecer).
objetivo(melhorar_condicionamento).

experiencia(iniciantes).
experiencia(intermediario).
experiencia(avancado).

disponibilidade(tempo_limitado).
disponibilidade(tempo_ilimitado).

recomendacao_treino :-
    write('Qual o seu objetivo? : '),
    read_line_to_string(user_input, ObjetivoInput), % Lê a entrada como string
    atom_string(Objetivo, ObjetivoInput), % Converte para átomo
    write('Qual o seu nível de experiência? : '),
    read_line_to_string(user_input, ExperienciaInput), % Lê o nível de experiência
    atom_string(Experiencia, ExperienciaInput), % Converte para átomo
    write('Informe sua disponibilidade : '),
    read_line_to_string(user_input, TempoInput), % Lê a disponibilidade de tempo
    atom_string(Tempo, TempoInput), % Converte para átomo
    encontrar_treino(Objetivo, Experiencia, Tempo).

encontrar_treino(Objetivo, Experiencia, Tempo) :-
    (   (   Objetivo == ganhar_massa, Experiencia == intermediario, Tempo == tempo_ilimitado ->
                format('Treino recomendado para o objetivo ~w, experiência ~w e tempo ~w: hipertrofia~n', [Objetivo, Experiencia, Tempo]);
        Objetivo == emagrecer, Experiencia == iniciantes, Tempo == tempo_limitado ->
                format('Treino recomendado para o objetivo ~w, experiência ~w e tempo ~w: perda_de_peso~n', [Objetivo, Experiencia, Tempo]);
        Objetivo == melhorar_condicionamento, Experiencia == avancado, Tempo == tempo_ilimitado ->
                format('Treino recomendado para o objetivo ~w, experiência ~w e tempo ~w: condicionamento_fisico~n', [Objetivo, Experiencia, Tempo]);
        write('Nenhum treino encontrado para os critérios informados.\n')
    )).
