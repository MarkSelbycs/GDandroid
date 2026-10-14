.class public final Lr0/h;
.super Ld0/b;
.source "WorkDatabaseMigrations.kt"


# static fields
.field public static final c:Lr0/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr0/h;

    invoke-direct {v0}, Lr0/h;-><init>()V

    sput-object v0, Lr0/h;->c:Lr0/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xc

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Ld0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Lf0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL "

    .line 1
    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    const-string v0, "UPDATE workspec SET content_uri_triggers = x\'\' WHERE content_uri_triggers is NULL"

    .line 2
    invoke-interface {p1, v0}, Lf0/g;->D(Ljava/lang/String;)V

    return-void
.end method
