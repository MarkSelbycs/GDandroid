.class public final Lv3/b$c;
.super Lm3/l;
.source "BufferedChannel.kt"

# interfaces
.implements Ll3/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/b;-><init>(ILl3/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/q<",
        "Lb4/b<",
        "*>;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ll3/l<",
        "-",
        "Ljava/lang/Throwable;",
        "+",
        "La3/o;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lv3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/b<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/b<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lv3/b$c;->b:Lv3/b;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lb4/b;Ljava/lang/Object;Ljava/lang/Object;)Ll3/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb4/b<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ll3/l<",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;"
        }
    .end annotation

    new-instance p2, Lv3/b$c$a;

    iget-object v0, p0, Lv3/b$c;->b:Lv3/b;

    invoke-direct {p2, p3, v0, p1}, Lv3/b$c$a;-><init>(Ljava/lang/Object;Lv3/b;Lb4/b;)V

    return-object p2
.end method

.method public bridge synthetic q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb4/b;

    invoke-virtual {p0, p1, p2, p3}, Lv3/b$c;->b(Lb4/b;Ljava/lang/Object;Ljava/lang/Object;)Ll3/l;

    move-result-object p1

    return-object p1
.end method
