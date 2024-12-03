sintoma_veiculo(motor_nao_liga).
sintoma_veiculo(luzes_fracas).
sintoma_veiculo(barulho_ao_frear).
sintoma_veiculo(pedal_macio).
sintoma_veiculo(mancha_no_chao).
sintoma_veiculo(cheiro_de_gasolina).

problema(bateria_fraca, Sintomas) :-
    member(motor_nao_liga, Sintomas),
    member(luzes_fracas, Sintomas).

problema(freio_desgastado, Sintomas) :-
    member(barulho_ao_frear, Sintomas),
    member(pedal_macio, Sintomas).

problema(vazamento_de_oleo, Sintomas) :-
    member(mancha_no_chao, Sintomas).

problema(vazamento_de_combustivel, Sintomas) :-
    member(cheiro_de_gasolina, Sintomas).

diagnostico_veiculo :-
    write('Descreva os defeitos separados por vírgula (ex: motor_nao_liga,pedal_macio): '),
    read_line_to_string(user_input, Input), % Lê a entrada do usuário
    split_string(Input, ",", " ", SintomasStrList), % Divide os sintomas por vírgula
    maplist(atom_string, SintomasList, SintomasStrList), % Converte strings para átomos
    diagnosticar_veiculo(SintomasList).

diagnosticar_veiculo(Sintomas) :-
    (   problema(Problema, Sintomas) ->
        format('Possível defeito: ~w~n', [Problema]),
        recomendacao(Problema);
        write('Não foi possível identificar o problema. Va a um mecânico.\n')
    ).

recomendacao(bateria_fraca) :-
    write('Recomendação: Verifique a bateria e considere substituí-la.\n').

recomendacao(freio_desgastado) :-
    write('Recomendação: Leve o veículo para revisão do sistema de freios.\n').

recomendacao(vazamento_de_oleo) :-
    write('Recomendação: Verifique o nível de óleo e procure por vazamentos visíveis.\n').

recomendacao(vazamento_de_combustivel) :-
    write('Recomendação: Verifique o tanque de combustível e as conexões.\n').
