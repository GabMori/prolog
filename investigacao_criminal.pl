evidencia(impressao_digital).
evidencia(motivo_financeiro).
evidencia(testemunha_ocular).

suspeito(jose) :- evidencias([impressao_digital, motivo_financeiro]).
suspeito(maria) :- evidencias([testemunha_ocular, motivo_passional]).

teoria(crime_passional) :- evidencias([testemunha_ocular, motivo_passional]).
teoria(crime_furtivo) :- evidencias([motivo_financeiro, impressao_digital]).

evidencias(Evidencias) :-
    forall(member(E, Evidencias), evidencia(E)).

analisar_crime :-
    write('Evidências encontradas: '),
    read_line_to_string(user_input, EvidenciasInput), % Lê a entrada como string
    split_string(EvidenciasInput, ",", " ", EvidenciasStrList), % Divide por vírgula
    maplist(atom_string, Evidencias, EvidenciasStrList), % Converte para átomos
    analisar(Evidencias).

% Análise do caso com base nas evidências
analisar(Evidencias) :-
    (   (   member(impressao_digital, Evidencias), member(motivo_financeiro, Evidencias), suspeito(jose) ->
                format('Suspeito: ~w\nTeoria: crime_furtivo~n', [jose]);
        member(testemunha_ocular, Evidencias), member(motivo_passional, Evidencias), suspeito(maria) ->
                format('Suspeito: ~w\nTeoria: crime_passional~n', [maria])
        );
        write('Nenhum suspeito encontrado.\n')
    ).
