.class public final synthetic Lv1/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/n;->a:Ljava/lang/String;

    iput p2, p0, Lv1/n;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lv1/n;->a:Ljava/lang/String;

    iget v1, p0, Lv1/n;->b:I

    check-cast p1, Lv1/o$a;

    invoke-static {v0, v1, p1}, Lv1/o;->a(Ljava/lang/String;ILv1/o$a;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1
.end method
