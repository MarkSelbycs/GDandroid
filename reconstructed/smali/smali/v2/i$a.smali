.class public Lv2/i$a;
.super Lv2/i$c;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv2/i;->b(Ls2/e;Ljava/lang/reflect/Field;Ljava/lang/String;Lx2/a;ZZ)Lv2/i$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final d:Ls2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls2/s<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic e:Ls2/e;

.field public final synthetic f:Ljava/lang/reflect/Field;

.field public final synthetic g:Lx2/a;

.field public final synthetic h:Z

.field public final synthetic i:Lv2/i;


# direct methods
.method public constructor <init>(Lv2/i;Ljava/lang/String;ZZLs2/e;Ljava/lang/reflect/Field;Lx2/a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv2/i$a;->i:Lv2/i;

    iput-object p5, p0, Lv2/i$a;->e:Ls2/e;

    iput-object p6, p0, Lv2/i$a;->f:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lv2/i$a;->g:Lx2/a;

    iput-boolean p8, p0, Lv2/i$a;->h:Z

    invoke-direct {p0, p2, p3, p4}, Lv2/i$c;-><init>(Ljava/lang/String;ZZ)V

    .line 2
    invoke-virtual {p1, p5, p6, p7}, Lv2/i;->f(Ls2/e;Ljava/lang/reflect/Field;Lx2/a;)Ls2/s;

    move-result-object p1

    iput-object p1, p0, Lv2/i$a;->d:Ls2/s;

    return-void
.end method


# virtual methods
.method public a(Ly2/a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/i$a;->d:Ls2/s;

    invoke-virtual {v0, p1}, Ls2/s;->b(Ly2/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lv2/i$a;->h:Z

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lv2/i$a;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b(Ly2/c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv2/i$a;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    new-instance v0, Lv2/l;

    iget-object v1, p0, Lv2/i$a;->e:Ls2/e;

    iget-object v2, p0, Lv2/i$a;->d:Ls2/s;

    iget-object v3, p0, Lv2/i$a;->g:Lx2/a;

    .line 3
    invoke-virtual {v3}, Lx2/a;->e()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lv2/l;-><init>(Ls2/e;Ls2/s;Ljava/lang/reflect/Type;)V

    .line 4
    invoke-virtual {v0, p1, p2}, Ls2/s;->d(Ly2/c;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lv2/i$c;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lv2/i$a;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
