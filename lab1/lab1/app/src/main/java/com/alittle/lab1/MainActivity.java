package com.alittle.lab1;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        final EditText editText = (EditText)findViewById(R.id.input);
        Button button = (Button)findViewById(R.id.button_check);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String tmp = editText.getText().toString();
                Toast.makeText(getApplicationContext(), varify(tmp), Toast.LENGTH_SHORT).show();
            }
        });
    }


    protected String varify(String string){
        // secret
        String key = "dboomc";
        char[] chars_secret = string.toCharArray();
        int len = string.length();

        // 栅栏加密
        StringBuilder stringBuilder_1 = new StringBuilder();
        StringBuilder stringBuilder_2 = new StringBuilder();
        for (int i = 0; i < len; i += 2) {
            stringBuilder_1.append(chars_secret[i]);
            if (i + 1 < len){
                stringBuilder_2.append(chars_secret[i + 1]);
            }
        }
        stringBuilder_1.append(stringBuilder_2);
        chars_secret = stringBuilder_1.toString().toCharArray();

        // 栅栏加密后偏移
        int offset = 10;
        for (int i = 0; i < chars_secret.length; i++) {
            chars_secret[i] += offset;
            if (chars_secret[i] > 'z'){
                chars_secret[i] -= 26;
            }
        }

        // 将偏移后的字符串逆序
        for (int i = 0; i < len / 2; i++) {
            char tmp;
            tmp = chars_secret[i];
            chars_secret[i] = chars_secret[len - i - 1];
            chars_secret[len - i - 1] = tmp;
        }

        if (String.valueOf(chars_secret).equals(key)){
            return "true";
        }else {
            return "false";
        }
    }

}
