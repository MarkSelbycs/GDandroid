.class public final Lcom/msec/bo$a;
.super Lcz/msebera/android/httpclient/message/BasicLineFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/bo$a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/msec/bo$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static $aa(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    check-cast p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    check-cast p2, Lcz/msebera/android/httpclient/Header;

    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->formatHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static $ab(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    check-cast p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    check-cast p2, Lcz/msebera/android/httpclient/RequestLine;

    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->formatRequestLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/RequestLine;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static $ac(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/msec/bo$a$a;

    check-cast p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/msec/bo$a$a;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Ljava/lang/String;)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/msec/bo$a;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/msec/bo$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/msec/bo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public formatHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x67a

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    return-object p1
.end method

.method public formatRequestLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/RequestLine;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x679

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    return-object p1
.end method
