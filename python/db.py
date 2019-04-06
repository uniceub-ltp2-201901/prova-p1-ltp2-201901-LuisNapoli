def get_disciplina(cursor, iddisciplina):
    cursor.execute(f'select nome, curso, carga_horaria from disciplina where iddisciplina = "{iddisciplina}"')
    disciplina = cursor.fetchall()
    print(disciplina)
    cursor.close()
    return disciplina


def get_professor(cursor, idprofessor):
    cursor.execute(f'select nome, data_nasc, nome_mae, titulacao from professor where idprofessor = "{idprofessor}"')
    professor = cursor.fetchall()
    print(professor)
    cursor.close()
    return professor

