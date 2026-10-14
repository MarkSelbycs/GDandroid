.class public final Lv0/e$b$a;
.super Lm3/l;
.source "Zip.kt"

# interfaces
.implements Ll3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv0/e$b;->a(Lw3/e;Ld3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm3/l;",
        "Ll3/a<",
        "[",
        "Lv0/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:[Lw3/d;


# direct methods
.method public constructor <init>([Lw3/d;)V
    .locals 0

    iput-object p1, p0, Lv0/e$b$a;->b:[Lw3/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lm3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lv0/b;"
        }
    .end annotation

    iget-object v0, p0, Lv0/e$b$a;->b:[Lw3/d;

    array-length v0, v0

    new-array v0, v0, [Lv0/b;

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lv0/e$b$a;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
