.class public final Lv0/f;
.super Ljava/lang/Object;
.source "WorkConstraintsTracker.kt"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "WorkConstraintsTracker"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"WorkConstraintsTracker\")"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lv0/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lv0/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final b(Lv0/e;Lz0/u;Lt3/b0;Lv0/d;)Lt3/h1;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spec"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lt3/l1;->b(Lt3/h1;ILjava/lang/Object;)Lt3/s;

    move-result-object v1

    .line 2
    invoke-virtual {p2, v1}, Ld3/a;->x(Ld3/g;)Ld3/g;

    move-result-object p2

    invoke-static {p2}, Lt3/f0;->a(Ld3/g;)Lt3/e0;

    move-result-object v2

    new-instance v5, Lv0/f$a;

    invoke-direct {v5, p0, p1, p3, v0}, Lv0/f$a;-><init>(Lv0/e;Lz0/u;Lv0/d;Ld3/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lt3/f;->b(Lt3/e0;Ld3/g;Lt3/g0;Ll3/p;ILjava/lang/Object;)Lt3/h1;

    return-object v1
.end method
