package com.cndatacom.campus.adapter;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class HistoryAdapter extends androidx.recyclerview.widget.RecyclerView.h<androidx.recyclerview.widget.RecyclerView.b0> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public org.json.JSONArray f3519d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.content.Context f3520e;

    public class HistoryViewHolder extends androidx.recyclerview.widget.RecyclerView.b0 {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public android.view.View f3521t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public android.widget.TextView f3522u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public android.view.View f3523v;

        public HistoryViewHolder(android.view.View view) {
            super(view);
            this.f3521t = view;
        }

        public android.view.View getDividerView() {
            if (this.f3523v == null) {
                this.f3523v = this.f3521t.findViewById(com.cndatacom.campus.R.id.divider_view);
            }
            return this.f3523v;
        }

        public android.widget.TextView getTitleTv() {
            if (this.f3522u == null) {
                this.f3522u = (android.widget.TextView) this.f3521t.findViewById(com.cndatacom.campus.R.id.title_tv);
            }
            return this.f3522u;
        }
    }

    public HistoryAdapter(android.content.Context context, org.json.JSONArray jSONArray) {
        this.f3520e = context;
        this.f3519d = jSONArray;
    }

    public final void b(int i5, com.cndatacom.campus.adapter.HistoryAdapter.HistoryViewHolder historyViewHolder, java.lang.String str) {
        historyViewHolder.getTitleTv().setText(str);
        if (i5 == this.f3519d.length() - 1) {
            historyViewHolder.getDividerView().setVisibility(8);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public int getItemCount() {
        return this.f3519d.length();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.b0 b0Var, int i5) {
        if (!(b0Var instanceof com.cndatacom.campus.adapter.HistoryAdapter.HistoryViewHolder) || i5 >= this.f3519d.length()) {
            return;
        }
        try {
            b(i5, (com.cndatacom.campus.adapter.HistoryAdapter.HistoryViewHolder) b0Var, this.f3519d.getString(i5));
        } catch (org.json.JSONException e5) {
            e5.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public androidx.recyclerview.widget.RecyclerView.b0 onCreateViewHolder(android.view.ViewGroup viewGroup, int i5) {
        return new com.cndatacom.campus.adapter.HistoryAdapter.HistoryViewHolder(android.view.LayoutInflater.from(this.f3520e).inflate(com.cndatacom.campus.R.layout.layout_lvitem_history, (android.view.ViewGroup) null, false));
    }
}
