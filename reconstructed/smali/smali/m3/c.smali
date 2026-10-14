.class public abstract Lm3/c;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Lq3/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm3/c$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/Object;


# instance fields
.field public transient a:Lq3/a;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lm3/c$a;->b()Lm3/c$a;

    move-result-object v0

    sput-object v0, Lm3/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lm3/c;->g:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lm3/c;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lm3/c;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lm3/c;->b:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lm3/c;->c:Ljava/lang/Class;

    .line 6
    iput-object p3, p0, Lm3/c;->d:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lm3/c;->e:Ljava/lang/String;

    .line 8
    iput-boolean p5, p0, Lm3/c;->f:Z

    return-void
.end method


# virtual methods
.method public D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm3/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public F()Lq3/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lm3/c;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lm3/c;->f:Z

    if-eqz v1, :cond_1

    .line 2
    invoke-static {v0}, Lm3/r;->c(Ljava/lang/Class;)Lq3/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lm3/r;->b(Ljava/lang/Class;)Lq3/b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm3/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lq3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/c;->a:Lq3/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lm3/c;->f()Lq3/a;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lm3/c;->a:Lq3/a;

    :cond_0
    return-object v0
.end method

.method public abstract f()Lq3/a;
.end method

.method public y()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lm3/c;->b:Ljava/lang/Object;

    return-object v0
.end method
