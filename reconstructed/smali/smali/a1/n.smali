.class public final La1/n;
.super Ljava/lang/Object;
.source "ProcessUtils.kt"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "ProcessUtils"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"ProcessUtils\")"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, La1/n;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi",
            "DiscouragedPrivateApi"
        }
    .end annotation

    sget-object p0, La1/a;->a:La1/a;

    invoke-virtual {p0}, La1/a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/content/Context;Landroidx/work/a;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, La1/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroidx/work/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroidx/work/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v0, p0}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_2
    return p0
.end method
