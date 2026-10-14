.class public final Lw0/c$a$b;
.super Ljava/lang/Object;
.source "ContraintControllers.kt"

# interfaces
.implements Lv0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw0/c$a;->I(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv0/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lv3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/q<",
            "Lv0/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw0/c;Lv3/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/c<",
            "TT;>;",
            "Lv3/q<",
            "-",
            "Lv0/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw0/c$a$b;->a:Lw0/c;

    iput-object p2, p0, Lw0/c$a$b;->b:Lv3/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw0/c$a$b;->a:Lw0/c;

    invoke-virtual {v0, p1}, Lw0/c;->d(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lv0/b$b;

    iget-object v0, p0, Lw0/c$a$b;->a:Lw0/c;

    invoke-virtual {v0}, Lw0/c;->b()I

    move-result v0

    invoke-direct {p1, v0}, Lv0/b$b;-><init>(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lv0/b$a;->a:Lv0/b$a;

    .line 3
    :goto_0
    iget-object v0, p0, Lw0/c$a$b;->b:Lv3/q;

    invoke-interface {v0}, Lv3/q;->m()Lv3/t;

    move-result-object v0

    invoke-interface {v0, p1}, Lv3/t;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
