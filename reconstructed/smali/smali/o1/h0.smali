.class public final synthetic Lo1/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lo1/i0;


# direct methods
.method public synthetic constructor <init>(Lo1/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/h0;->a:Lo1/i0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo1/h0;->a:Lo1/i0;

    invoke-virtual {v0, p1}, Lo1/i0;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
