.class public final Lg0/d;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.kt"

# interfaces
.implements Lf0/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/d$c;,
        Lg0/d$a;,
        Lg0/d$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final h:Lg0/d$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lf0/h$a;

.field public final d:Z

.field public final e:Z

.field public final f:La3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/d<",
            "Lg0/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg0/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg0/d$a;-><init>(Lm3/g;)V

    sput-object v0, Lg0/d;->h:Lg0/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lf0/h$a;ZZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg0/d;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lg0/d;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lg0/d;->c:Lf0/h$a;

    .line 5
    iput-boolean p4, p0, Lg0/d;->d:Z

    .line 6
    iput-boolean p5, p0, Lg0/d;->e:Z

    .line 7
    new-instance p1, Lg0/d$d;

    invoke-direct {p1, p0}, Lg0/d$d;-><init>(Lg0/d;)V

    invoke-static {p1}, La3/e;->a(Ll3/a;)La3/d;

    move-result-object p1

    iput-object p1, p0, Lg0/d;->f:La3/d;

    return-void
.end method

.method public static final synthetic c(Lg0/d;)Z
    .locals 0

    iget-boolean p0, p0, Lg0/d;->e:Z

    return p0
.end method

.method public static final synthetic e(Lg0/d;)Lf0/h$a;
    .locals 0

    iget-object p0, p0, Lg0/d;->c:Lf0/h$a;

    return-object p0
.end method

.method public static final synthetic f(Lg0/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg0/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic h(Lg0/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg0/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic i(Lg0/d;)Z
    .locals 0

    iget-boolean p0, p0, Lg0/d;->d:Z

    return p0
.end method

.method public static final synthetic j(Lg0/d;)Z
    .locals 0

    iget-boolean p0, p0, Lg0/d;->g:Z

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/d;->f:La3/d;

    invoke-interface {v0}, La3/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lg0/d;->l()Lg0/d$c;

    move-result-object v0

    invoke-virtual {v0}, Lg0/d$c;->close()V

    :cond_0
    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg0/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lg0/d$c;
    .locals 1

    iget-object v0, p0, Lg0/d;->f:La3/d;

    invoke-interface {v0}, La3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg0/d$c;

    return-object v0
.end method

.method public l0()Lf0/g;
    .locals 2

    invoke-virtual {p0}, Lg0/d;->l()Lg0/d$c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg0/d$c;->f(Z)Lf0/g;

    move-result-object v0

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/d;->f:La3/d;

    invoke-interface {v0}, La3/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lg0/d;->l()Lg0/d$c;

    move-result-object v0

    invoke-static {v0, p1}, Lf0/b;->d(Landroid/database/sqlite/SQLiteOpenHelper;Z)V

    .line 3
    :cond_0
    iput-boolean p1, p0, Lg0/d;->g:Z

    return-void
.end method
