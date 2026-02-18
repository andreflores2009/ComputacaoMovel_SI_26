package com.example.exemplocrud;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    //campos do EditText
    private EditText nome;
    private EditText cpf;
    private EditText telefone;

    private AlunoDao dao;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //Vinculando os campos do layout com as variáveis do Java
        nome = findViewById(R.id.editNome);
        cpf = findViewById(R.id.editCPF);
        telefone = findViewById(R.id.editTelefone);

        dao = new AlunoDao(this);

    }

    //método para botão salvar qdo clicado
    public void salvar(View view){
        Aluno a = new Aluno();
        a.setNome(nome.getText().toString());
        a.setCpf(cpf.getText().toString());
        a.setTelefone(telefone.getText().toString());
        long id = dao.inserir(a); //inserir o aluno
        Toast.makeText(this,"Aluno inserido com id: " +id, Toast.LENGTH_SHORT).show();
    }

}