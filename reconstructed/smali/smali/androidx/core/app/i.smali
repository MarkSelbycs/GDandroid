.class public Landroidx/core/app/i;
.super Ljava/lang/Object;
.source "Person.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/i$a;,
        Landroidx/core/app/i$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroidx/core/app/i$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Landroidx/core/app/i$b;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/core/app/i;->a:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p1, Landroidx/core/app/i$b;->b:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Landroidx/core/app/i;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 4
    iget-object v0, p1, Landroidx/core/app/i$b;->c:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/i;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Landroidx/core/app/i$b;->d:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/i;->d:Ljava/lang/String;

    .line 6
    iget-boolean v0, p1, Landroidx/core/app/i$b;->e:Z

    iput-boolean v0, p0, Landroidx/core/app/i;->e:Z

    .line 7
    iget-boolean p1, p1, Landroidx/core/app/i$b;->f:Z

    iput-boolean p1, p0, Landroidx/core/app/i;->f:Z

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/i;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/app/i;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/app/i;->f:Z

    return v0
.end method

.method public g()Landroid/app/Person;
    .locals 1

    invoke-static {p0}, Landroidx/core/app/i$a;->b(Landroidx/core/app/i;)Landroid/app/Person;

    move-result-object v0

    return-object v0
.end method
