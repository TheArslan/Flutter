package com.practise.project;

import android.app.Fragment;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.AppCompatButton;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;


public class fragmentone extends Fragment {
    View view;
    AppCompatButton aboutbtn;
    AppCompatButton genericbtn;
    AppCompatButton save;

public fragmentone(){

}
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {

        view = inflater.inflate(R.layout.diary, container, false);
        aboutbtn=(AppCompatButton) view.findViewById(R.id.about_subjectbtn);
        genericbtn=(AppCompatButton) view.findViewById(R.id.genericbtn);
        save=(AppCompatButton) view.findViewById(R.id.Savebtn);
        aboutbtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                genericbtn.setBackgroundColor(Color.BLACK);
                genericbtn.setTextColor(Color.WHITE);
                aboutbtn.setBackgroundColor(Color.WHITE);
                aboutbtn.setTextColor(Color.BLACK);

            }
        });
        genericbtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                aboutbtn.setBackgroundColor(Color.BLACK);
                aboutbtn.setTextColor(Color.WHITE);
                genericbtn.setTextColor(Color.BLACK);
                genericbtn.setBackgroundColor(Color.WHITE);
            }
        });
        save.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent=new Intent(getActivity(),studentlist.class);
                startActivity(intent);
                getActivity().finish();
            }
        });
        return view;
    }


}