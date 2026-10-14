.class public Lo1/k0;
.super Ln1/a;
.source "StackTraceElementConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/lang/StackTraceElement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/k0;->h(Ljava/lang/Object;)Ljava/lang/StackTraceElement;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)Ljava/lang/StackTraceElement;
    .locals 5

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map;

    const-string v0, "className"

    .line 3
    invoke-static {p1, v0}, La2/i;->h(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "methodName"

    .line 4
    invoke-static {p1, v1}, La2/i;->h(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileName"

    .line 5
    invoke-static {p1, v2}, La2/i;->h(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lineNumber"

    .line 6
    invoke-static {p1, v3}, La2/i;->g(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    .line 7
    new-instance v3, Ljava/lang/StackTraceElement;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, v4}, Le2/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v3, v0, v1, v2, p1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
