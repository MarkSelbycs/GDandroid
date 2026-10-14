.class public final Landroidx/fragment/app/a;
.super Landroidx/fragment/app/h;
.source "BackStackRecord.java"

# interfaces
.implements Landroidx/fragment/app/f$l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/fragment/app/f;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:I

.field public n:I

.field public o:Ljava/lang/CharSequence;

.field public p:I

.field public q:Ljava/lang/CharSequence;

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/h;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/a;->j:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroidx/fragment/app/a;->m:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/a;->t:Z

    .line 6
    iput-object p1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    return-void
.end method

.method public static r(Landroidx/fragment/app/a$a;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_0

    .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->N:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->H()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-boolean p1, p0, Landroidx/fragment/app/a;->i:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/f;->i(Landroidx/fragment/app/a;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/h;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/a;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/h;
    .locals 2

    new-instance v0, Landroidx/fragment/app/a$a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/a$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->f(Landroidx/fragment/app/a$a;)V

    return-object p0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->h(Z)I

    move-result v0

    return v0
.end method

.method public e(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/h;
    .locals 2

    new-instance v0, Landroidx/fragment/app/a$a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/a$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->f(Landroidx/fragment/app/a$a;)V

    return-object p0
.end method

.method public f(Landroidx/fragment/app/a$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p0, Landroidx/fragment/app/a;->c:I

    iput v0, p1, Landroidx/fragment/app/a$a;->c:I

    .line 3
    iget v0, p0, Landroidx/fragment/app/a;->d:I

    iput v0, p1, Landroidx/fragment/app/a$a;->d:I

    .line 4
    iget v0, p0, Landroidx/fragment/app/a;->e:I

    iput v0, p1, Landroidx/fragment/app/a$a;->e:I

    .line 5
    iget v0, p0, Landroidx/fragment/app/a;->f:I

    iput v0, p1, Landroidx/fragment/app/a$a;->f:I

    return-void
.end method

.method public g(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/a;->i:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 4
    iget-object v3, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a$a;

    .line 5
    iget-object v4, v3, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_2

    .line 6
    iget v5, v4, Landroidx/fragment/app/Fragment;->v:I

    add-int/2addr v5, p1

    iput v5, v4, Landroidx/fragment/app/Fragment;->v:I

    .line 7
    sget-boolean v4, Landroidx/fragment/app/f;->J:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->v:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public h(Z)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/a;->l:Z

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Landroidx/fragment/app/f;->J:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Lv/c;

    invoke-direct {v0, v1}, Lv/c;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v2, v1, v2}, Landroidx/fragment/app/a;->j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/a;->l:Z

    .line 9
    iget-boolean v0, p0, Landroidx/fragment/app/a;->i:Z

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/f;->k(Landroidx/fragment/app/a;)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/a;->m:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Landroidx/fragment/app/a;->m:I

    .line 12
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/f;->c0(Landroidx/fragment/app/f$l;Z)V

    .line 13
    iget p1, p0, Landroidx/fragment/app/a;->m:I

    return p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    iput-object v0, p2, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/f;

    const-string v0, " now "

    const-string v1, ": was "

    if-eqz p3, :cond_3

    .line 6
    iget-object v2, p2, Landroidx/fragment/app/Fragment;->E:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->E:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    :goto_0
    iput-object p3, p2, Landroidx/fragment/app/Fragment;->E:Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_7

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    .line 9
    iget p3, p2, Landroidx/fragment/app/Fragment;->C:I

    if-eqz p3, :cond_5

    if-ne p3, p1, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroidx/fragment/app/Fragment;->C:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 11
    :cond_5
    :goto_1
    iput p1, p2, Landroidx/fragment/app/Fragment;->C:I

    iput p1, p2, Landroidx/fragment/app/Fragment;->D:I

    goto :goto_2

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t add fragment "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with tag "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to container view with no id"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7
    :goto_2
    new-instance p1, Landroidx/fragment/app/a$a;

    invoke-direct {p1, p4, p2}, Landroidx/fragment/app/a$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/a;->f(Landroidx/fragment/app/a$a;)V

    return-void

    .line 14
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must be a public static class to be  properly recreated from"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " instance state."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Landroidx/fragment/app/a;->k(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    if-eqz p3, :cond_8

    .line 1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/a;->k:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    .line 2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/a;->m:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    .line 3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/a;->l:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4
    iget v0, p0, Landroidx/fragment/app/a;->g:I

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Landroidx/fragment/app/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    .line 7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    iget v0, p0, Landroidx/fragment/app/a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    :cond_0
    iget v0, p0, Landroidx/fragment/app/a;->c:I

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/fragment/app/a;->d:I

    if-eqz v0, :cond_2

    .line 10
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget v0, p0, Landroidx/fragment/app/a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    .line 12
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    iget v0, p0, Landroidx/fragment/app/a;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    :cond_2
    iget v0, p0, Landroidx/fragment/app/a;->e:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/fragment/app/a;->f:I

    if-eqz v0, :cond_4

    .line 15
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 16
    iget v0, p0, Landroidx/fragment/app/a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    .line 17
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    iget v0, p0, Landroidx/fragment/app/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    :cond_4
    iget v0, p0, Landroidx/fragment/app/a;->n:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/a;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 20
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    iget v0, p0, Landroidx/fragment/app/a;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    .line 22
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Landroidx/fragment/app/a;->o:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 24
    :cond_6
    iget v0, p0, Landroidx/fragment/app/a;->p:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/fragment/app/a;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 25
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    iget v0, p0, Landroidx/fragment/app/a;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    .line 27
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Landroidx/fragment/app/a;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 29
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 30
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_d

    .line 32
    iget-object v2, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a$a;

    .line 33
    iget v3, v2, Landroidx/fragment/app/a$a;->a:I

    packed-switch v3, :pswitch_data_0

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroidx/fragment/app/a$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_1
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v3, "ATTACH"

    goto :goto_1

    :pswitch_3
    const-string v3, "DETACH"

    goto :goto_1

    :pswitch_4
    const-string v3, "SHOW"

    goto :goto_1

    :pswitch_5
    const-string v3, "HIDE"

    goto :goto_1

    :pswitch_6
    const-string v3, "REMOVE"

    goto :goto_1

    :pswitch_7
    const-string v3, "REPLACE"

    goto :goto_1

    :pswitch_8
    const-string v3, "ADD"

    goto :goto_1

    :pswitch_9
    const-string v3, "NULL"

    .line 35
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 36
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    .line 37
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    .line 38
    iget v3, v2, Landroidx/fragment/app/a$a;->c:I

    if-nez v3, :cond_9

    iget v3, v2, Landroidx/fragment/app/a$a;->d:I

    if-eqz v3, :cond_a

    .line 39
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget v3, v2, Landroidx/fragment/app/a$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    .line 41
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget v3, v2, Landroidx/fragment/app/a$a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    :cond_a
    iget v3, v2, Landroidx/fragment/app/a$a;->e:I

    if-nez v3, :cond_b

    iget v3, v2, Landroidx/fragment/app/a$a;->f:I

    if-eqz v3, :cond_c

    .line 44
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    iget v3, v2, Landroidx/fragment/app/a$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    .line 46
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 47
    iget v2, v2, Landroidx/fragment/app/a$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 2
    iget-object v4, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a$a;

    .line 3
    iget-object v5, v4, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 4
    iget v6, p0, Landroidx/fragment/app/a;->g:I

    iget v7, p0, Landroidx/fragment/app/a;->h:I

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/Fragment;->W0(II)V

    .line 5
    :cond_0
    iget v6, v4, Landroidx/fragment/app/a$a;->a:I

    packed-switch v6, :pswitch_data_0

    .line 6
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Landroidx/fragment/app/a$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :pswitch_1
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/fragment/app/f;->a1(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 8
    :pswitch_2
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/f;->a1(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 9
    :pswitch_3
    iget v6, v4, Landroidx/fragment/app/a$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->V0(I)V

    .line 10
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/f;->n(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 11
    :pswitch_4
    iget v6, v4, Landroidx/fragment/app/a$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->V0(I)V

    .line 12
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/f;->t(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 13
    :pswitch_5
    iget v6, v4, Landroidx/fragment/app/a$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->V0(I)V

    .line 14
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/f;->d1(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 15
    :pswitch_6
    iget v6, v4, Landroidx/fragment/app/a$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->V0(I)V

    .line 16
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/f;->t0(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 17
    :pswitch_7
    iget v6, v4, Landroidx/fragment/app/a$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->V0(I)V

    .line 18
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/f;->N0(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 19
    :pswitch_8
    iget v6, v4, Landroidx/fragment/app/a$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->V0(I)V

    .line 20
    iget-object v6, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v6, v5, v1}, Landroidx/fragment/app/f;->j(Landroidx/fragment/app/Fragment;Z)V

    .line 21
    :goto_1
    iget-boolean v6, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v6, :cond_1

    iget v4, v4, Landroidx/fragment/app/a$a;->a:I

    if-eq v4, v3, :cond_1

    if-eqz v5, :cond_1

    .line 22
    iget-object v3, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v3, v5}, Landroidx/fragment/app/f;->D0(Landroidx/fragment/app/Fragment;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 23
    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v0, :cond_3

    .line 24
    iget-object v0, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    iget v1, v0, Landroidx/fragment/app/f;->q:I

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/f;->E0(IZ)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public m(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    iget-object v2, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a$a;

    .line 3
    iget-object v3, v2, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    .line 4
    iget v4, p0, Landroidx/fragment/app/a;->g:I

    invoke-static {v4}, Landroidx/fragment/app/f;->S0(I)I

    move-result v4

    iget v5, p0, Landroidx/fragment/app/a;->h:I

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/Fragment;->W0(II)V

    .line 5
    :cond_0
    iget v4, v2, Landroidx/fragment/app/a$a;->a:I

    packed-switch v4, :pswitch_data_0

    .line 6
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Landroidx/fragment/app/a$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :pswitch_1
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/f;->a1(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 8
    :pswitch_2
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/fragment/app/f;->a1(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 9
    :pswitch_3
    iget v4, v2, Landroidx/fragment/app/a$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->V0(I)V

    .line 10
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/f;->t(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 11
    :pswitch_4
    iget v4, v2, Landroidx/fragment/app/a$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->V0(I)V

    .line 12
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/f;->n(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 13
    :pswitch_5
    iget v4, v2, Landroidx/fragment/app/a$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->V0(I)V

    .line 14
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/f;->t0(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 15
    :pswitch_6
    iget v4, v2, Landroidx/fragment/app/a$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->V0(I)V

    .line 16
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/f;->d1(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 17
    :pswitch_7
    iget v4, v2, Landroidx/fragment/app/a$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->V0(I)V

    .line 18
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroidx/fragment/app/f;->j(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_1

    .line 19
    :pswitch_8
    iget v4, v2, Landroidx/fragment/app/a$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->V0(I)V

    .line 20
    iget-object v4, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/f;->N0(Landroidx/fragment/app/Fragment;)V

    .line 21
    :goto_1
    iget-boolean v4, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v4, :cond_1

    iget v2, v2, Landroidx/fragment/app/a$a;->a:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    if-eqz v3, :cond_1

    .line 22
    iget-object v2, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/f;->D0(Landroidx/fragment/app/Fragment;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 23
    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/a;->t:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Landroidx/fragment/app/a;->a:Landroidx/fragment/app/f;

    iget v0, p1, Landroidx/fragment/app/f;->q:I

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/f;->E0(IZ)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public n(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 1
    :goto_0
    iget-object v5, v0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 2
    iget-object v5, v0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a$a;

    .line 3
    iget v6, v5, Landroidx/fragment/app/a$a;->a:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v6, v8, :cond_8

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/16 v11, 0x9

    if-eq v6, v9, :cond_2

    if-eq v6, v10, :cond_1

    const/4 v9, 0x6

    if-eq v6, v9, :cond_1

    const/4 v7, 0x7

    if-eq v6, v7, :cond_8

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object v6, v0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    new-instance v7, Landroidx/fragment/app/a$a;

    invoke-direct {v7, v11, v3}, Landroidx/fragment/app/a$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    .line 5
    iget-object v3, v5, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    goto/16 :goto_3

    .line 6
    :cond_1
    iget-object v6, v5, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v5, v5, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    if-ne v5, v3, :cond_9

    .line 8
    iget-object v3, v0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    new-instance v6, Landroidx/fragment/app/a$a;

    invoke-direct {v6, v11, v5}, Landroidx/fragment/app/a$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v3, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object v3, v7

    goto :goto_3

    .line 9
    :cond_2
    iget-object v6, v5, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    .line 10
    iget v9, v6, Landroidx/fragment/app/Fragment;->D:I

    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v8

    const/4 v13, 0x0

    :goto_1
    if-ltz v12, :cond_6

    .line 12
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/Fragment;

    .line 13
    iget v15, v14, Landroidx/fragment/app/Fragment;->D:I

    if-ne v15, v9, :cond_5

    if-ne v14, v6, :cond_3

    move v13, v8

    goto :goto_2

    :cond_3
    if-ne v14, v3, :cond_4

    .line 14
    iget-object v3, v0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    new-instance v15, Landroidx/fragment/app/a$a;

    invoke-direct {v15, v11, v14}, Landroidx/fragment/app/a$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v3, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object v3, v7

    .line 15
    :cond_4
    new-instance v15, Landroidx/fragment/app/a$a;

    invoke-direct {v15, v10, v14}, Landroidx/fragment/app/a$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 16
    iget v2, v5, Landroidx/fragment/app/a$a;->c:I

    iput v2, v15, Landroidx/fragment/app/a$a;->c:I

    .line 17
    iget v2, v5, Landroidx/fragment/app/a$a;->e:I

    iput v2, v15, Landroidx/fragment/app/a$a;->e:I

    .line 18
    iget v2, v5, Landroidx/fragment/app/a$a;->d:I

    iput v2, v15, Landroidx/fragment/app/a$a;->d:I

    .line 19
    iget v2, v5, Landroidx/fragment/app/a$a;->f:I

    iput v2, v15, Landroidx/fragment/app/a$a;->f:I

    .line 20
    iget-object v2, v0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/2addr v4, v8

    :cond_5
    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    :cond_6
    if-eqz v13, :cond_7

    .line 22
    iget-object v2, v0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 23
    :cond_7
    iput v8, v5, Landroidx/fragment/app/a$a;->a:I

    .line 24
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_8
    iget-object v2, v5, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    add-int/2addr v4, v8

    goto/16 :goto_0

    :cond_a
    return-object v3
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public p(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a$a;

    .line 3
    iget-object v3, v3, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    iget v3, v3, Landroidx/fragment/app/Fragment;->D:I

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public q(Ljava/util/ArrayList;II)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_7

    .line 2
    iget-object v4, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a$a;

    .line 3
    iget-object v4, v4, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_1

    iget v4, v4, Landroidx/fragment/app/Fragment;->D:I

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_6

    move v2, p2

    :goto_2
    if-ge v2, p3, :cond_5

    .line 4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    .line 5
    iget-object v6, v5, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_3
    if-ge v7, v6, :cond_4

    .line 6
    iget-object v8, v5, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/a$a;

    .line 7
    iget-object v8, v8, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_2

    iget v8, v8, Landroidx/fragment/app/Fragment;->D:I

    goto :goto_4

    :cond_2
    move v8, v0

    :goto_4
    if-ne v8, v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public s()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a$a;

    .line 3
    invoke-static {v2}, Landroidx/fragment/app/a;->r(Landroidx/fragment/app/a$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public t()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/fragment/app/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/fragment/app/a;->u:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Landroidx/fragment/app/a;->m:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Landroidx/fragment/app/a;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/a;->k:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroidx/fragment/app/Fragment$f;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a$a;

    .line 3
    invoke-static {v1}, Landroidx/fragment/app/a;->r(Landroidx/fragment/app/a$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v1, v1, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->X0(Landroidx/fragment/app/Fragment$f;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public v(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a$a;

    .line 3
    iget v2, v1, Landroidx/fragment/app/a$a;->a:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    iget-object p2, v1, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :pswitch_1
    const/4 p2, 0x0

    goto :goto_1

    .line 5
    :cond_0
    :pswitch_2
    iget-object v1, v1, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    :pswitch_3
    iget-object v1, v1, Landroidx/fragment/app/a$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
