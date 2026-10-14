.class public final Lv0/f$a$a;
.super Ljava/lang/Object;
.source "WorkConstraintsTracker.kt"

# interfaces
.implements Lw3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv0/f$a;->I(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lw3/e;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv0/d;

.field public final synthetic b:Lz0/u;


# direct methods
.method public constructor <init>(Lv0/d;Lz0/u;)V
    .locals 0

    iput-object p1, p0, Lv0/f$a$a;->a:Lv0/d;

    iput-object p2, p0, Lv0/f$a$a;->b:Lz0/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lv0/b;

    invoke-virtual {p0, p1, p2}, Lv0/f$a$a;->b(Lv0/b;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lv0/b;Ld3/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv0/b;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p2, p0, Lv0/f$a$a;->a:Lv0/d;

    iget-object v0, p0, Lv0/f$a$a;->b:Lz0/u;

    invoke-interface {p2, v0, p1}, Lv0/d;->a(Lz0/u;Lv0/b;)V

    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method
