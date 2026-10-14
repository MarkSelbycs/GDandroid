.class public final La4/c;
.super La4/f;
.source "Dispatcher.kt"


# static fields
.field public static final i:La4/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, La4/c;

    invoke-direct {v0}, La4/c;-><init>()V

    sput-object v0, La4/c;->i:La4/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v1, La4/l;->c:I

    sget v2, La4/l;->d:I

    .line 2
    sget-wide v3, La4/l;->e:J

    sget-object v5, La4/l;->a:Ljava/lang/String;

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v5}, La4/f;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
