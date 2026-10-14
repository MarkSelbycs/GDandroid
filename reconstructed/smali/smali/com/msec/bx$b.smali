.class public final Lcom/msec/bx$b;
.super Lorg/apache/http/message/BasicLineFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/bx$b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/msec/bx$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/msec/bx$b;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/message/BasicLineFormatter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/msec/bx$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/msec/bx$b;-><init>()V

    return-void
.end method

.method private static a(Lorg/apache/http/util/CharArrayBuffer;Z)Lcom/msec/bx$b$a;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const/16 p0, 0x617

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/msec/bx$b$a;

    return-object p0
.end method


# virtual methods
.method public formatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x616

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/util/CharArrayBuffer;

    return-object p1
.end method

.method public formatRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/RequestLine;)Lorg/apache/http/util/CharArrayBuffer;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x615

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/util/CharArrayBuffer;

    return-object p1
.end method
