.class public Lv1/f;
.super Ljava/lang/Object;
.source "Console.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    const-string v0, "{}"

    const-string v1, " "

    invoke-static {v0, p0, v1}, Lb2/c;->B(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {p1}, Le2/c;->u([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "{}"

    invoke-static {p0, v0}, Lb2/c;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Lv1/f;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1, v2, v1}, Le2/c;->r([Ljava/lang/Object;I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lv1/f;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lv1/f;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static varargs c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p1, p2}, Lb2/c;->i(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 2
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 3
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lv1/f;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
