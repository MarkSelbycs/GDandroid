.class public Lv1/k;
.super Ljava/lang/Object;
.source "Opt.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final b:Lv1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/k<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv1/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv1/k;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lv1/k;->b:Lv1/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv1/k;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lv1/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lv1/k<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lv1/k;->b:Lv1/k;

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Lv1/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lv1/k<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lv1/k;->a()Lv1/k;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lv1/k;

    invoke-direct {v0, p0}, Lv1/k;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lv1/k;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lv1/k;

    .line 3
    iget-object v0, p0, Lv1/k;->a:Ljava/lang/Object;

    iget-object p1, p1, Lv1/k;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lv1/k;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv1/k;->a:Ljava/lang/Object;

    invoke-static {v0}, Le2/b0;->k0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
