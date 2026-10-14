.class public final Lv0/e$a;
.super Lm3/l;
.source "WorkConstraintsTracker.kt"

# interfaces
.implements Ll3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv0/e;->a(Lz0/u;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/l<",
        "Lw0/c<",
        "*>;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lv0/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv0/e$a;

    invoke-direct {v0}, Lv0/e$a;-><init>()V

    sput-object v0, Lv0/e$a;->b:Lv0/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lw0/c;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/c<",
            "*>;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "it.javaClass.simpleName"

    invoke-static {p1, v0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lw0/c;

    invoke-virtual {p0, p1}, Lv0/e$a;->b(Lw0/c;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
