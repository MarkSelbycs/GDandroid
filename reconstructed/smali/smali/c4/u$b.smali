.class public final Lc4/u$b;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lc4/q;

.field public final b:Lc4/z;


# direct methods
.method public constructor <init>(Lc4/q;Lc4/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc4/u$b;->a:Lc4/q;

    .line 3
    iput-object p2, p0, Lc4/u$b;->b:Lc4/z;

    return-void
.end method

.method public static synthetic a(Lc4/u$b;)Lc4/q;
    .locals 0

    iget-object p0, p0, Lc4/u$b;->a:Lc4/q;

    return-object p0
.end method

.method public static synthetic b(Lc4/u$b;)Lc4/z;
    .locals 0

    iget-object p0, p0, Lc4/u$b;->b:Lc4/z;

    return-object p0
.end method

.method public static c(Lc4/q;Lc4/z;)Lc4/u$b;
    .locals 1

    const-string v0, "body == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p0, v0}, Lc4/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    const-string v0, "Content-Length"

    .line 4
    invoke-virtual {p0, v0}, Lc4/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_3
    :goto_1
    new-instance v0, Lc4/u$b;

    invoke-direct {v0, p0, p1}, Lc4/u$b;-><init>(Lc4/q;Lc4/z;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Lc4/z;)Lc4/u$b;
    .locals 2

    const-string v0, "name == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p0}, Lc4/u;->f(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "; filename="

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v0, p1}, Lc4/u;->f(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "Content-Disposition"

    aput-object v1, p0, p1

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    invoke-static {p0}, Lc4/q;->f([Ljava/lang/String;)Lc4/q;

    move-result-object p0

    invoke-static {p0, p2}, Lc4/u$b;->c(Lc4/q;Lc4/z;)Lc4/u$b;

    move-result-object p0

    return-object p0
.end method
