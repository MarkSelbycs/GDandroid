package y3;

/* JADX INFO: compiled from: LockFreeLinkedList.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.Object f6932a = new y3.h0("CONDITION_FALSE");

    public static final java.lang.Object a() {
        return f6932a;
    }

    public static final y3.s b(java.lang.Object obj) {
        y3.s sVar;
        y3.b0 b0Var = obj instanceof y3.b0 ? (y3.b0) obj : null;
        if (b0Var != null && (sVar = b0Var.f6886a) != null) {
            return sVar;
        }
        m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (y3.s) obj;
    }
}
