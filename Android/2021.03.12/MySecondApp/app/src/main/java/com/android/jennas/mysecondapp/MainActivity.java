package com.android.jennas.mysecondapp;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void onButton1Click(View view) {
        Toast.makeText(getApplicationContext(), "만수무강하시냐?", Toast.LENGTH_LONG).show();
    }
}
