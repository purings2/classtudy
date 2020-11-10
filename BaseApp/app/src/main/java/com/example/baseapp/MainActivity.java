package com.example.baseapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    Button button1, btnGoogle, btn911, btnGall, btnEnd;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        button1     = (Button)findViewById(R.id.button1);
        btnGoogle   = (Button)findViewById(R.id.btnGoogle);
        btn911      = (Button)findViewById(R.id.btn911);
        btnGall     = (Button)findViewById(R.id.btnGall);
        btnEnd      = (Button)findViewById(R.id.btnEnd);

        button1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Toast.makeText(getApplicationContext(),
                        "버튼을 눌렀습니다.", Toast.LENGTH_SHORT).show();
            }
        });
        // 구글홈페이지 연결하기
        btnGoogle.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent mIntent
                        = new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.google.com"));
                startActivity(mIntent);
            }
        });
        //911 응급전화걸기
        btn911.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent mIntent
                        = new Intent(Intent.ACTION_VIEW, Uri.parse("tel:/911"));
                startActivity(mIntent);
            }
        });
        // 갤러리 불러오기
        btnGall.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent mIntent
                        = new Intent(Intent.ACTION_VIEW, Uri.parse("content://media/internal/images/media"));
                startActivity(mIntent);
            }
        });
        // 종료버튼
        btnEnd.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });

    }
}