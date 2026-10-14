package androidx.core.app;

/* JADX INFO: compiled from: RemoteInput.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class j {

    /* JADX INFO: compiled from: RemoteInput.java */
    public static class a {
        public static void a(java.lang.Object obj, android.content.Intent intent, android.os.Bundle bundle) {
            android.app.RemoteInput.addResultsToIntent((android.app.RemoteInput[]) obj, intent, bundle);
        }

        public static android.app.RemoteInput b(androidx.core.app.j jVar) {
            throw null;
        }

        public static android.os.Bundle c(android.content.Intent intent) {
            return android.app.RemoteInput.getResultsFromIntent(intent);
        }
    }

    public static android.app.RemoteInput a(androidx.core.app.j jVar) {
        return androidx.core.app.j.a.b(jVar);
    }

    public static android.app.RemoteInput[] b(androidx.core.app.j[] jVarArr) {
        if (jVarArr == null) {
            return null;
        }
        android.app.RemoteInput[] remoteInputArr = new android.app.RemoteInput[jVarArr.length];
        for (int i5 = 0; i5 < jVarArr.length; i5++) {
            androidx.core.app.j jVar = jVarArr[i5];
            remoteInputArr[i5] = a(null);
        }
        return remoteInputArr;
    }
}
