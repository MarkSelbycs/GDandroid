package com.cndatacom.campus;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class BaseActivity extends androidx.appcompat.app.AppCompatActivity {
    public java.lang.String i() {
        return "";
    }

    public java.lang.String j() {
        return "";
    }

    public final void k() {
        if (getActionBar() != null) {
            getActionBar().hide();
        }
        if (getSupportActionBar() != null) {
            getSupportActionBar().l();
        }
    }

    public final void l(java.lang.String str) {
        android.widget.TextView textView = (android.widget.TextView) findViewById(com.cndatacom.campus.R.id.title_tv);
        if (textView != null) {
            textView.setText(str);
        }
    }

    public final void m(java.lang.String str) {
        android.widget.TextView textView = (android.widget.TextView) findViewById(com.cndatacom.campus.R.id.back_tv);
        if (textView != null) {
            textView.setText(str);
        }
        android.widget.LinearLayout linearLayout = (android.widget.LinearLayout) findViewById(com.cndatacom.campus.R.id.back_btn);
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.BaseActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(android.view.View view) {
                    com.cndatacom.campus.BaseActivity.this.finish();
                }
            });
        }
    }

    public abstract void n(android.os.Bundle bundle);

    public abstract int o();

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        k();
        setContentView(o());
        java.lang.String strI = i();
        if (!android.text.TextUtils.isEmpty(strI)) {
            l(strI);
        }
        java.lang.String strJ = j();
        if (!android.text.TextUtils.isEmpty(strJ)) {
            m(strJ);
        }
        n(bundle);
    }
}
