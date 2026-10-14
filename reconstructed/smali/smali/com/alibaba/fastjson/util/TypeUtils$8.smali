.class final Lcom/alibaba/fastjson/util/TypeUtils$8;
.super Ljava/util/HashSet;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/util/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(I)V

    const-string p1, "net.sf.cglib.proxy.Factory"

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p1, "org.springframework.cglib.proxy.Factory"

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p1, "javassist.util.proxy.ProxyObject"

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p1, "org.apache.ibatis.javassist.util.proxy.ProxyObject"

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p1, "org.hibernate.proxy.HibernateProxy"

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p1, "org.springframework.context.annotation.ConfigurationClassEnhancer$EnhancedConfiguration"

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
