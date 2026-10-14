.class public final Lw0/c$a$a;
.super Lm3/l;
.source "ContraintControllers.kt"

# interfaces
.implements Ll3/a;


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
        "Lm3/l;",
        "Ll3/a<",
        "La3/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lw0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw0/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lw0/c$a$b;


# direct methods
.method public constructor <init>(Lw0/c;Lw0/c$a$b;)V
    .locals 0

    iput-object p1, p0, Lw0/c$a$a;->b:Lw0/c;

    iput-object p2, p0, Lw0/c$a$a;->c:Lw0/c$a$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lw0/c$a$a;->b:Lw0/c;

    invoke-static {v0}, Lw0/c;->a(Lw0/c;)Lx0/g;

    move-result-object v0

    iget-object v1, p0, Lw0/c$a$a;->c:Lw0/c$a$b;

    invoke-virtual {v0, v1}, Lx0/g;->f(Lv0/a;)V

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lw0/c$a$a;->b()V

    sget-object v0, La3/o;->a:La3/o;

    return-object v0
.end method
