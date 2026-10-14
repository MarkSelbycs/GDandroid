.class public final Lg0/d$d;
.super Lm3/l;
.source "FrameworkSQLiteOpenHelper.kt"

# interfaces
.implements Ll3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lf0/h$a;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/a<",
        "Lg0/d$c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final synthetic b:Lg0/d;


# direct methods
.method public constructor <init>(Lg0/d;)V
    .locals 0

    iput-object p1, p0, Lg0/d$d;->b:Lg0/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lg0/d$c;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lg0/d$d;->b:Lg0/d;

    invoke-static {v1}, Lg0/d;->h(Lg0/d;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lg0/d$d;->b:Lg0/d;

    invoke-static {v1}, Lg0/d;->i(Lg0/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    iget-object v3, v0, Lg0/d$d;->b:Lg0/d;

    invoke-static {v3}, Lg0/d;->f(Lg0/d;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf0/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 5
    iget-object v4, v0, Lg0/d$d;->b:Lg0/d;

    invoke-static {v4}, Lg0/d;->h(Lg0/d;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    new-instance v3, Lg0/d$c;

    .line 8
    iget-object v4, v0, Lg0/d$d;->b:Lg0/d;

    invoke-static {v4}, Lg0/d;->f(Lg0/d;)Landroid/content/Context;

    move-result-object v6

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 10
    new-instance v8, Lg0/d$b;

    invoke-direct {v8, v2}, Lg0/d$b;-><init>(Lg0/c;)V

    .line 11
    iget-object v1, v0, Lg0/d$d;->b:Lg0/d;

    invoke-static {v1}, Lg0/d;->e(Lg0/d;)Lf0/h$a;

    move-result-object v9

    .line 12
    iget-object v1, v0, Lg0/d$d;->b:Lg0/d;

    invoke-static {v1}, Lg0/d;->c(Lg0/d;)Z

    move-result v10

    move-object v5, v3

    .line 13
    invoke-direct/range {v5 .. v10}, Lg0/d$c;-><init>(Landroid/content/Context;Ljava/lang/String;Lg0/d$b;Lf0/h$a;Z)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance v3, Lg0/d$c;

    .line 15
    iget-object v1, v0, Lg0/d$d;->b:Lg0/d;

    invoke-static {v1}, Lg0/d;->f(Lg0/d;)Landroid/content/Context;

    move-result-object v12

    .line 16
    iget-object v1, v0, Lg0/d$d;->b:Lg0/d;

    invoke-static {v1}, Lg0/d;->h(Lg0/d;)Ljava/lang/String;

    move-result-object v13

    .line 17
    new-instance v14, Lg0/d$b;

    invoke-direct {v14, v2}, Lg0/d$b;-><init>(Lg0/c;)V

    .line 18
    iget-object v1, v0, Lg0/d$d;->b:Lg0/d;

    invoke-static {v1}, Lg0/d;->e(Lg0/d;)Lf0/h$a;

    move-result-object v15

    .line 19
    iget-object v1, v0, Lg0/d$d;->b:Lg0/d;

    invoke-static {v1}, Lg0/d;->c(Lg0/d;)Z

    move-result v16

    move-object v11, v3

    .line 20
    invoke-direct/range {v11 .. v16}, Lg0/d$c;-><init>(Landroid/content/Context;Ljava/lang/String;Lg0/d$b;Lf0/h$a;Z)V

    .line 21
    :goto_0
    iget-object v1, v0, Lg0/d$d;->b:Lg0/d;

    invoke-static {v1}, Lg0/d;->j(Lg0/d;)Z

    move-result v1

    .line 22
    invoke-static {v3, v1}, Lf0/b;->d(Landroid/database/sqlite/SQLiteOpenHelper;Z)V

    return-object v3
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg0/d$d;->b()Lg0/d$c;

    move-result-object v0

    return-object v0
.end method
