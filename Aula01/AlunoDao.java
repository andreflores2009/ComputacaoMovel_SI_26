package com.example.exemplocrud;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

public class AlunoDao {
    private Conexao conexao;
    private SQLiteDatabase banco;


    //context é usado para a conexão
    public AlunoDao(Context context){
        conexao = new Conexao(context); //criei uma conexao
        banco = conexao.getWritableDatabase(); //iniciar um banco de dados para escrita
    }

    //método para inserir
    public long inserir(Aluno aluno){ // long porque retorna o id do aluno
        ContentValues values = new ContentValues(); //valores que irei inserir
        values.put("nome", aluno.getNome());
        values.put("cpf", aluno.getCpf());
        values.put("telefone", aluno.getTelefone());
        return banco.insert("aluno",null, values); //tabela aluno, não tera colunas vazias, valores values
    }

}
