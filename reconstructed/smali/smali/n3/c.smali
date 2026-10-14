.class public abstract Ln3/c;
.super Ljava/lang/Object;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/c$a;
    }
.end annotation


# static fields
.field public static final a:Ln3/c$a;

.field public static final b:Ln3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln3/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/c$a;-><init>(Lm3/g;)V

    sput-object v0, Ln3/c;->a:Ln3/c$a;

    sget-object v0, Lg3/b;->a:Lg3/a;

    invoke-virtual {v0}, Lg3/a;->b()Ln3/c;

    move-result-object v0

    sput-object v0, Ln3/c;->b:Ln3/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic b()Ln3/c;
    .locals 2

    sget-object v0, Ln3/c;->b:Ln3/c;

    return-object v0
.end method


# virtual methods
.method public abstract c()I
.end method
