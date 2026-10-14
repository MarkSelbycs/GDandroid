package com.cndatacom.campus.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SpannableStringUtil {
    public static void bindLinkText(final android.content.Context context, android.widget.TextView textView, java.lang.String str, java.lang.String str2, boolean z4, final android.view.View.OnClickListener onClickListener) {
        android.text.SpannableString spannableString = new android.text.SpannableString(str);
        android.text.style.ClickableSpan clickableSpan = new android.text.style.ClickableSpan() { // from class: com.cndatacom.campus.util.SpannableStringUtil.1
            @Override // android.text.style.ClickableSpan
            public void onClick(android.view.View view) {
                android.view.View.OnClickListener onClickListener2 = onClickListener;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(view);
                }
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(android.text.TextPaint textPaint) {
                super.updateDrawState(textPaint);
                textPaint.setColor(context.getColor(com.cndatacom.campus.R.color.colorAccent));
                textPaint.setUnderlineText(false);
                textPaint.clearShadowLayer();
            }
        };
        int iIndexOf = str.indexOf(str2);
        int length = str2.length() + iIndexOf;
        spannableString.setSpan(clickableSpan, iIndexOf, length, 18);
        if (z4) {
            spannableString.setSpan(new android.text.style.UnderlineSpan(), iIndexOf, length, 33);
        }
        textView.setHighlightColor(context.getColor(android.R.color.transparent));
        textView.setText(spannableString);
        textView.setMovementMethod(android.text.method.LinkMovementMethod.getInstance());
    }
}
