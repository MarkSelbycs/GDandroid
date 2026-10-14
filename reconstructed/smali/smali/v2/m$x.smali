.class public final Lv2/m$x;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Ls2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv2/m;->b(Ljava/lang/Class;Ls2/s;)Ls2/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Ls2/s;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ls2/s;)V
    .locals 0

    iput-object p1, p0, Lv2/m$x;->a:Ljava/lang/Class;

    iput-object p2, p0, Lv2/m$x;->b:Ls2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls2/e;Lx2/a;)Ls2/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls2/e;",
            "Lx2/a<",
            "TT;>;)",
            "Ls2/s<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lx2/a;->c()Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lv2/m$x;->a:Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lv2/m$x;->b:Ls2/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Factory[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv2/m$x;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv2/m$x;->b:Ls2/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
