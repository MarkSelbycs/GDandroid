.class public Lb0/b$b;
.super Landroidx/lifecycle/o;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final c:Landroidx/lifecycle/p$a;


# instance fields
.field public a:Lj/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/h<",
            "Lb0/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb0/b$b$a;

    invoke-direct {v0}, Lb0/b$b$a;-><init>()V

    sput-object v0, Lb0/b$b;->c:Landroidx/lifecycle/p$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/o;-><init>()V

    .line 2
    new-instance v0, Lj/h;

    invoke-direct {v0}, Lj/h;-><init>()V

    iput-object v0, p0, Lb0/b$b;->a:Lj/h;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lb0/b$b;->b:Z

    return-void
.end method

.method public static c(Landroidx/lifecycle/q;)Lb0/b$b;
    .locals 2

    new-instance v0, Landroidx/lifecycle/p;

    sget-object v1, Lb0/b$b;->c:Landroidx/lifecycle/p$a;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/p;-><init>(Landroidx/lifecycle/q;Landroidx/lifecycle/p$a;)V

    const-class p0, Lb0/b$b;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/p;->a(Ljava/lang/Class;)Landroidx/lifecycle/o;

    move-result-object p0

    check-cast p0, Lb0/b$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/o;->a()V

    .line 2
    iget-object v0, p0, Lb0/b$b;->a:Lj/h;

    invoke-virtual {v0}, Lj/h;->t()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lb0/b$b;->a:Lj/h;

    invoke-virtual {v2, v1}, Lj/h;->u(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb0/b$a;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Lb0/b$a;->j(Z)Lc0/a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lb0/b$b;->a:Lj/h;

    invoke-virtual {v0}, Lj/h;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb0/b$b;->a:Lj/h;

    invoke-virtual {v0}, Lj/h;->t()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lb0/b$b;->a:Lj/h;

    invoke-virtual {v2}, Lj/h;->t()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lb0/b$b;->a:Lj/h;

    invoke-virtual {v2, v1}, Lj/h;->u(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb0/b$a;

    .line 6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lb0/b$b;->a:Lj/h;

    invoke-virtual {v3, v1}, Lj/h;->k(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 7
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb0/b$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v0, p2, p3, p4}, Lb0/b$a;->k(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb0/b$b;->a:Lj/h;

    invoke-virtual {v0}, Lj/h;->t()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lb0/b$b;->a:Lj/h;

    invoke-virtual {v2, v1}, Lj/h;->u(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb0/b$a;

    .line 3
    invoke-virtual {v2}, Lb0/b$a;->l()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
