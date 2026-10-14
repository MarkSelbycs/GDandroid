.class public Lf2/m;
.super Ljava/lang/Object;
.source "JSONParser.java"


# instance fields
.field public final a:Lf2/o;


# direct methods
.method public constructor <init>(Lf2/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf2/m;->a:Lf2/o;

    return-void
.end method

.method public static a(Lf2/o;)Lf2/m;
    .locals 1

    new-instance v0, Lf2/m;

    invoke-direct {v0, p0}, Lf2/m;-><init>(Lf2/o;)V

    return-object v0
.end method


# virtual methods
.method public b(Lf2/e;Lv1/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/e;",
            "Lv1/i<",
            "Ly1/a<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf2/m;->a:Lf2/o;

    .line 2
    invoke-virtual {v0}, Lf2/o;->g()C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_5

    .line 3
    invoke-virtual {v0}, Lf2/o;->g()C

    move-result v1

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_4

    .line 4
    invoke-virtual {v0}, Lf2/o;->a()V

    .line 5
    :goto_0
    invoke-virtual {v0}, Lf2/o;->g()C

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_0

    .line 6
    invoke-virtual {v0}, Lf2/o;->a()V

    .line 7
    sget-object v1, Lf2/j;->a:Lf2/j;

    invoke-virtual {p1, v1, p2}, Lf2/e;->u(Ljava/lang/Object;Lv1/i;)Z

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Lf2/o;->a()V

    .line 9
    invoke-virtual {v0}, Lf2/o;->i()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lf2/e;->u(Ljava/lang/Object;Lv1/i;)Z

    .line 10
    :goto_1
    invoke-virtual {v0}, Lf2/o;->g()C

    move-result v1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    const-string p1, "Expected a \',\' or \']\'"

    .line 11
    invoke-virtual {v0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    invoke-virtual {v0}, Lf2/o;->g()C

    move-result v1

    if-ne v1, v2, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-virtual {v0}, Lf2/o;->a()V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    const-string p1, "A JSONArray text must start with \'[\'"

    .line 14
    invoke-virtual {v0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p1

    throw p1
.end method

.method public c(Lf2/l;Lv1/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/l;",
            "Lv1/i<",
            "Ly1/d<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf2/m;->a:Lf2/o;

    .line 2
    invoke-virtual {v0}, Lf2/o;->g()C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_8

    .line 3
    :goto_0
    invoke-virtual {v0}, Lf2/o;->c()C

    move-result v1

    .line 4
    invoke-virtual {v0}, Lf2/o;->g()C

    move-result v3

    if-eqz v3, :cond_7

    const/16 v4, 0x5b

    const/16 v5, 0x7d

    if-eq v3, v4, :cond_1

    if-eq v3, v2, :cond_1

    if-eq v3, v5, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    if-eq v1, v2, :cond_6

    .line 5
    :goto_1
    invoke-virtual {v0}, Lf2/o;->a()V

    .line 6
    invoke-virtual {v0}, Lf2/o;->i()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lf2/o;->g()C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_5

    .line 8
    invoke-virtual {v0}, Lf2/o;->i()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lf2/l;->h()Lf2/f;

    move-result-object v4

    invoke-virtual {v4}, Lf2/f;->f()Z

    move-result v4

    invoke-virtual {p1, v1, v3, p2, v4}, Lf2/l;->T(Ljava/lang/String;Ljava/lang/Object;Lv1/i;Z)Lf2/l;

    .line 9
    invoke-virtual {v0}, Lf2/o;->g()C

    move-result v1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_3

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_3

    if-ne v1, v5, :cond_2

    return-void

    :cond_2
    const-string p1, "Expected a \',\' or \'}\'"

    .line 10
    invoke-virtual {v0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p1

    throw p1

    .line 11
    :cond_3
    invoke-virtual {v0}, Lf2/o;->g()C

    move-result v1

    if-ne v1, v5, :cond_4

    return-void

    .line 12
    :cond_4
    invoke-virtual {v0}, Lf2/o;->a()V

    goto :goto_0

    :cond_5
    const-string p1, "Expected a \':\' after a key"

    .line 13
    invoke-virtual {v0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p1

    throw p1

    :cond_6
    const-string p1, "A JSONObject can not directly nest another JSONObject or JSONArray."

    .line 14
    invoke-virtual {v0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p1

    throw p1

    :cond_7
    const-string p1, "A JSONObject text must end with \'}\'"

    .line 15
    invoke-virtual {v0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p1

    throw p1

    :cond_8
    const-string p1, "A JSONObject text must begin with \'{\'"

    .line 16
    invoke-virtual {v0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p1

    throw p1
.end method
