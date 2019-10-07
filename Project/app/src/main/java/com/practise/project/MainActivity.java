package com.practise.project;

import android.app.FragmentTransaction;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.BottomNavigationView;
import android.app.Fragment;
import android.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.AppCompatButton;
import android.view.MenuItem;
import com.practise.project.fragmentone;
public class MainActivity extends AppCompatActivity implements BottomNavigationView.OnNavigationItemSelectedListener {
    BottomNavigationView bv;
    fragmentone fragment=new fragmentone();
    fragmenttwo fragmenttwo=new fragmenttwo();
    AppCompatButton aboutbtn;
    AppCompatButton genericbtn;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        bv=(BottomNavigationView) findViewById(R.id.bottom_navigation);

        FragmentManager manager = getFragmentManager();
        FragmentTransaction transaction = manager.beginTransaction();
        transaction.replace(R.id.layout_id,fragment);
        transaction.commit();

        bv.setOnNavigationItemSelectedListener(this);
    }



    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem item) {
        int id=item.getItemId();
        switch (id){
            case R.id.diary:

                FragmentManager manager = getFragmentManager();
                FragmentTransaction transaction = manager.beginTransaction();
                transaction.replace(R.id.layout_id,fragment);
                transaction.commit();
                break;
            case R.id.generic:
                FragmentManager manager1 = getFragmentManager();
                FragmentTransaction transaction1 = manager1.beginTransaction();
                transaction1.replace(R.id.layout_id,fragmenttwo);
                transaction1.commit();
                break;
        }
        return false;
    }
}