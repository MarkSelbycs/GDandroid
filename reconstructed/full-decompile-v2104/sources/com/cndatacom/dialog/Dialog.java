package com.cndatacom.dialog;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Dialog {

    public interface DialogEvent {
        void btnClick(int i5);
    }

    public interface RefreshUpdateDialogEvent {
        void cancel();

        void finish(java.lang.String str);

        void retry(java.lang.String str);
    }

    public interface UpdateDialogEvent {
        void callbackView(android.view.View view);
    }

    public static android.app.AlertDialog alert(android.app.Activity activity, android.view.View view, org.json.JSONObject jSONObject, final com.cndatacom.dialog.Dialog.DialogEvent dialogEvent) {
        android.view.Window window;
        org.json.JSONObject jSONObject2 = jSONObject == null ? new org.json.JSONObject() : jSONObject;
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
        android.view.View viewInflate = android.view.LayoutInflater.from(activity).inflate(com.cndatacom.dialog.R.layout.alert_layout, (android.view.ViewGroup) null);
        builder.setView(viewInflate);
        final android.app.AlertDialog alertDialogCreate = builder.create();
        java.lang.String strOptString = jSONObject2.optString("gravity", "");
        if (!android.text.TextUtils.isEmpty(strOptString) && (window = alertDialogCreate.getWindow()) != null) {
            android.view.WindowManager.LayoutParams attributes = window.getAttributes();
            strOptString.hashCode();
            if (strOptString.equals("bottom")) {
                attributes.gravity = 80;
            } else if (strOptString.equals("top")) {
                attributes.gravity = 48;
            }
            window.setAttributes(attributes);
        }
        alertDialogCreate.setCancelable(jSONObject2.optBoolean("closeOnBack", true));
        alertDialogCreate.setCanceledOnTouchOutside(false);
        if (jSONObject2.optBoolean("backgroundTransparent", true)) {
            alertDialogCreate.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        }
        java.lang.String strOptString2 = jSONObject2.optString("title", "温馨提示");
        if (!android.text.TextUtils.isEmpty(strOptString2)) {
            android.widget.TextView textView = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.dialog.R.id.title_tv);
            textView.setVisibility(0);
            textView.setText(strOptString2);
            textView.setTextColor(android.graphics.Color.parseColor(jSONObject2.optString("titleColor", "#323233")));
            if (jSONObject2.optBoolean("titleBold", false)) {
                textView.setTypeface(null, 1);
            }
            java.lang.String strOptString3 = jSONObject2.optString("titleAlign", "center");
            if (strOptString3.equals("center")) {
                textView.setTextAlignment(4);
            } else if (strOptString3.equals("left")) {
                textView.setTextAlignment(2);
            } else if (strOptString3.equals("right")) {
                textView.setTextAlignment(3);
            }
        }
        if (jSONObject2.optBoolean("closeable", false)) {
            android.widget.TextView textView2 = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.dialog.R.id.close_btn);
            textView2.setVisibility(0);
            textView2.setTextColor(android.graphics.Color.parseColor(jSONObject2.optString("closeButtonColor", "#323233")));
            textView2.setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.dialog.Dialog.6
                @Override // android.view.View.OnClickListener
                public void onClick(android.view.View view2) {
                    alertDialogCreate.dismiss();
                    com.cndatacom.dialog.Dialog.DialogEvent dialogEvent2 = dialogEvent;
                    if (dialogEvent2 != null) {
                        dialogEvent2.btnClick(-1);
                    }
                }
            });
        }
        if (view != null) {
            android.widget.LinearLayout linearLayout = (android.widget.LinearLayout) viewInflate.findViewById(com.cndatacom.dialog.R.id.message_view);
            linearLayout.setVisibility(0);
            linearLayout.addView(view, new android.widget.LinearLayout.LayoutParams(-1, -2));
        } else {
            java.lang.String strOptString4 = jSONObject2.optString("content", "");
            if (!android.text.TextUtils.isEmpty(strOptString4)) {
                android.widget.TextView textView3 = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.dialog.R.id.message_tv);
                textView3.setTextColor(android.graphics.Color.parseColor(jSONObject2.optString("contentColor", "#323233")));
                java.lang.String strOptString5 = jSONObject2.optString("contentAlign", "center");
                if (strOptString5.equals("center")) {
                    textView3.setTextAlignment(4);
                } else if (strOptString5.equals("left")) {
                    textView3.setTextAlignment(2);
                } else if (strOptString5.equals("right")) {
                    textView3.setTextAlignment(3);
                }
                textView3.setVisibility(0);
                if (jSONObject2.optBoolean("allowHtml", false)) {
                    textView3.setText(android.text.Html.fromHtml(strOptString4));
                } else {
                    textView3.setText(strOptString4);
                }
                if (jSONObject2.optBoolean("contentBold", false)) {
                    textView3.setTypeface(null, 1);
                }
            }
        }
        android.widget.LinearLayout linearLayout2 = (android.widget.LinearLayout) viewInflate.findViewById(com.cndatacom.dialog.R.id.single_ll);
        android.widget.LinearLayout linearLayout3 = (android.widget.LinearLayout) viewInflate.findViewById(com.cndatacom.dialog.R.id.double_ll);
        android.widget.LinearLayout linearLayout4 = (android.widget.LinearLayout) viewInflate.findViewById(com.cndatacom.dialog.R.id.other_ll);
        boolean zOptBoolean = jSONObject2.optBoolean("showCancel", true);
        if (!jSONObject2.optBoolean("showConfirm", true) && !zOptBoolean) {
            linearLayout3.setVisibility(8);
            linearLayout2.setVisibility(8);
            linearLayout4.setVisibility(0);
        } else if (zOptBoolean) {
            linearLayout4.setVisibility(8);
            linearLayout2.setVisibility(8);
            linearLayout3.setVisibility(0);
            ((android.widget.RelativeLayout) viewInflate.findViewById(com.cndatacom.dialog.R.id.double_cancel_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.dialog.Dialog.7
                @Override // android.view.View.OnClickListener
                public void onClick(android.view.View view2) {
                    alertDialogCreate.dismiss();
                    com.cndatacom.dialog.Dialog.DialogEvent dialogEvent2 = dialogEvent;
                    if (dialogEvent2 != null) {
                        dialogEvent2.btnClick(0);
                    }
                }
            });
            ((android.widget.RelativeLayout) viewInflate.findViewById(com.cndatacom.dialog.R.id.double_confirm_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.dialog.Dialog.8
                @Override // android.view.View.OnClickListener
                public void onClick(android.view.View view2) {
                    alertDialogCreate.dismiss();
                    com.cndatacom.dialog.Dialog.DialogEvent dialogEvent2 = dialogEvent;
                    if (dialogEvent2 != null) {
                        dialogEvent2.btnClick(1);
                    }
                }
            });
            java.lang.String strOptString6 = jSONObject2.optString("confirmText", "确定");
            android.widget.TextView textView4 = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.dialog.R.id.double_confirm_btn_tv);
            textView4.setTextColor(android.graphics.Color.parseColor(jSONObject2.optString("confirmColor", "#42a5f5")));
            textView4.setText(strOptString6);
            java.lang.String strOptString7 = jSONObject2.optString("cancelText", "取消");
            android.widget.TextView textView5 = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.dialog.R.id.double_cancel_btn_tv);
            textView5.setTextColor(android.graphics.Color.parseColor(jSONObject2.optString("cancelColor", "#a1a1a1")));
            textView5.setText(strOptString7);
        } else {
            ((android.widget.RelativeLayout) viewInflate.findViewById(com.cndatacom.dialog.R.id.single_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.dialog.Dialog.9
                @Override // android.view.View.OnClickListener
                public void onClick(android.view.View view2) {
                    alertDialogCreate.dismiss();
                    com.cndatacom.dialog.Dialog.DialogEvent dialogEvent2 = dialogEvent;
                    if (dialogEvent2 != null) {
                        dialogEvent2.btnClick(1);
                    }
                }
            });
            android.widget.TextView textView6 = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.dialog.R.id.single_btn_tv);
            linearLayout4.setVisibility(8);
            linearLayout2.setVisibility(0);
            linearLayout3.setVisibility(8);
            java.lang.String strOptString8 = jSONObject2.optString("confirmText", "确定");
            textView6.setTextColor(android.graphics.Color.parseColor(jSONObject2.optString("confirmColor", "#42a5f5")));
            textView6.setText(strOptString8);
        }
        return alertDialogCreate;
    }

    public static android.app.AlertDialog getAdDialog(android.app.Activity activity, android.graphics.Bitmap bitmap, final android.view.View.OnClickListener onClickListener) {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
        android.view.View viewInflate = android.view.LayoutInflater.from(activity).inflate(com.cndatacom.dialog.R.layout.alert_ad_layout, (android.view.ViewGroup) null);
        builder.setView(viewInflate);
        final android.app.AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        android.widget.ImageView imageView = (android.widget.ImageView) viewInflate.findViewById(com.cndatacom.dialog.R.id.ad_img);
        imageView.setBackground(new android.graphics.drawable.BitmapDrawable(bitmap));
        imageView.setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.dialog.Dialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(android.view.View view) {
                android.view.View.OnClickListener onClickListener2 = onClickListener;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(view);
                }
            }
        });
        ((android.widget.TextView) viewInflate.findViewById(com.cndatacom.dialog.R.id.close_tv)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.dialog.Dialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(android.view.View view) {
                alertDialogCreate.dismiss();
            }
        });
        return alertDialogCreate;
    }

    public static android.app.AlertDialog getUpdateDialog(android.app.Activity activity, java.lang.String str, com.cndatacom.dialog.Dialog.UpdateDialogEvent updateDialogEvent) {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
        android.view.View viewInflate = android.view.LayoutInflater.from(activity).inflate(com.cndatacom.dialog.R.layout.alert_update_layout, (android.view.ViewGroup) null);
        android.widget.TextView textView = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.dialog.R.id.message_tv);
        if (android.text.TextUtils.isEmpty(str)) {
            str = "";
        }
        textView.setText(str);
        if (updateDialogEvent != null) {
            updateDialogEvent.callbackView(viewInflate);
        }
        builder.setView(viewInflate);
        android.app.AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        return alertDialogCreate;
    }

    public static android.app.AlertDialog loading(android.app.Activity activity, java.lang.String str) {
        return loading(activity, str, true);
    }

    public static void refreshUpdateDialog(android.view.View view, final org.json.JSONObject jSONObject, final com.cndatacom.dialog.Dialog.RefreshUpdateDialogEvent refreshUpdateDialogEvent) {
        android.widget.LinearLayout linearLayout = (android.widget.LinearLayout) view.findViewById(com.cndatacom.dialog.R.id.update_downloading);
        int i5 = com.cndatacom.dialog.R.id.update_finish;
        android.widget.RelativeLayout relativeLayout = (android.widget.RelativeLayout) view.findViewById(i5);
        android.widget.LinearLayout linearLayout2 = (android.widget.LinearLayout) view.findViewById(com.cndatacom.dialog.R.id.update_error);
        java.lang.String strOptString = jSONObject.optString("tag", "downloading");
        if (!"downloading".equals(strOptString)) {
            if ("finish".equals(strOptString)) {
                if (relativeLayout.getVisibility() != 0) {
                    relativeLayout.setVisibility(0);
                    linearLayout.setVisibility(8);
                    linearLayout2.setVisibility(8);
                }
                ((android.widget.RelativeLayout) relativeLayout.findViewById(i5)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.dialog.Dialog.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(android.view.View view2) {
                        if (refreshUpdateDialogEvent != null) {
                            refreshUpdateDialogEvent.finish(jSONObject.optString("filePath", ""));
                        }
                    }
                });
                return;
            }
            if (linearLayout2.getVisibility() != 0) {
                linearLayout2.setVisibility(0);
                linearLayout.setVisibility(8);
                relativeLayout.setVisibility(8);
            }
            ((android.widget.RelativeLayout) linearLayout2.findViewById(com.cndatacom.dialog.R.id.update_cancel)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.dialog.Dialog.2
                @Override // android.view.View.OnClickListener
                public void onClick(android.view.View view2) {
                    com.cndatacom.dialog.Dialog.RefreshUpdateDialogEvent refreshUpdateDialogEvent2 = refreshUpdateDialogEvent;
                    if (refreshUpdateDialogEvent2 != null) {
                        refreshUpdateDialogEvent2.cancel();
                    }
                }
            });
            ((android.widget.RelativeLayout) linearLayout2.findViewById(com.cndatacom.dialog.R.id.update_retry)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.dialog.Dialog.3
                @Override // android.view.View.OnClickListener
                public void onClick(android.view.View view2) {
                    if (refreshUpdateDialogEvent != null) {
                        refreshUpdateDialogEvent.retry(jSONObject.optString("taskUrl", ""));
                    }
                }
            });
            return;
        }
        if (linearLayout.getVisibility() != 0) {
            linearLayout.setVisibility(0);
            relativeLayout.setVisibility(8);
            linearLayout2.setVisibility(8);
        }
        android.widget.ProgressBar progressBar = (android.widget.ProgressBar) view.findViewById(com.cndatacom.dialog.R.id.update_progress_bar);
        int max = progressBar.getMax();
        if (max == 0 || max == 100) {
            progressBar.setMax(jSONObject.optInt("fileSize", 0));
        }
        progressBar.setProgress(jSONObject.optInt("progress", 0));
        ((android.widget.TextView) view.findViewById(com.cndatacom.dialog.R.id.update_progress_text)).setText("(" + jSONObject.optString("progressText", ".00B") + "/" + jSONObject.optString("fileSizeText", ".00B") + ")");
    }

    public static android.app.AlertDialog loading(android.app.Activity activity, java.lang.String str, boolean z4) {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
        android.view.View viewInflate = android.view.LayoutInflater.from(activity).inflate(com.cndatacom.dialog.R.layout.alert_loading_layout, (android.view.ViewGroup) null);
        builder.setView(viewInflate);
        android.widget.TextView textView = (android.widget.TextView) viewInflate.findViewById(com.cndatacom.dialog.R.id.message_tv);
        if (android.text.TextUtils.isEmpty(str)) {
            str = "";
        }
        textView.setText(str);
        android.app.AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCancelable(z4);
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        return alertDialogCreate;
    }

    public static android.app.AlertDialog alert(android.app.Activity activity, org.json.JSONObject jSONObject, com.cndatacom.dialog.Dialog.DialogEvent dialogEvent) {
        return alert(activity, null, jSONObject, dialogEvent);
    }
}
