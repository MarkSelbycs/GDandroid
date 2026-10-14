.class public final synthetic Lg0/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field public final synthetic a:Lf0/h$a;

.field public final synthetic b:Lg0/d$b;


# direct methods
.method public synthetic constructor <init>(Lf0/h$a;Lg0/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/e;->a:Lf0/h$a;

    iput-object p2, p0, Lg0/e;->b:Lg0/d$b;

    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Lg0/e;->a:Lf0/h$a;

    iget-object v1, p0, Lg0/e;->b:Lg0/d$b;

    invoke-static {v0, v1, p1}, Lg0/d$c;->c(Lf0/h$a;Lg0/d$b;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
