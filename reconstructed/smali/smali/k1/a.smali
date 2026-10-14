.class public Lk1/a;
.super Ljava/lang/Object;
.source "Base16Codec.java"


# static fields
.field public static final b:Lk1/a;

.field public static final c:Lk1/a;


# instance fields
.field public final a:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lk1/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lk1/a;-><init>(Z)V

    sput-object v0, Lk1/a;->b:Lk1/a;

    .line 2
    new-instance v0, Lk1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk1/a;-><init>(Z)V

    sput-object v0, Lk1/a;->c:Lk1/a;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "0123456789abcdef"

    goto :goto_0

    :cond_0
    const-string p1, "0123456789ABCDEF"

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lk1/a;->a:[C

    return-void
.end method


# virtual methods
.method public a(C)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/a;->a:[C

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/a;->a:[C

    shr-int/lit8 v2, p1, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/a;->a:[C

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/a;->a:[C

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
