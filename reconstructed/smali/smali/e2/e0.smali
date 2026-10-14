.class public Le2/e0;
.super Ljava/lang/Object;
.source "XmlUtil.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Le2/e0;->d(Lorg/w3c/dom/Node;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/w3c/dom/Node;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Le2/e0;->c(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Le2/b0;->d0()Ljava/io/StringWriter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 2
    :goto_0
    :try_start_0
    invoke-static {p0, v0, p1, p2, p3}, Le2/e0;->f(Lorg/w3c/dom/Node;Ljava/io/Writer;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Lr1/c;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Trans xml document to string error!"

    invoke-direct {p1, p0, p3, p2}, Lr1/c;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static d(Lorg/w3c/dom/Node;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {p0, v0, p1}, Le2/e0;->b(Lorg/w3c/dom/Node;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Ljava/lang/String;IZ)V
    .locals 3

    .line 1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "yes"

    if-lez p3, :cond_0

    :try_start_1
    const-string v2, "indent"

    .line 3
    invoke-virtual {v0, v2, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "doctype-public"

    .line 4
    invoke-virtual {v0, v2, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "{http://xml.apache.org/xslt}indent-amount"

    .line 5
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {p2}, Lb2/c;->s(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "encoding"

    .line 7
    invoke-virtual {v0, p3, p2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    const-string p2, "omit-xml-declaration"

    .line 8
    invoke-virtual {v0, p2, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-virtual {v0, p0, p1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Lr1/c;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Trans xml document to string error!"

    invoke-direct {p1, p0, p3, p2}, Lr1/c;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static f(Lorg/w3c/dom/Node;Ljava/io/Writer;Ljava/lang/String;IZ)V
    .locals 1

    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-static {v0, p0, p2, p3, p4}, Le2/e0;->e(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;Ljava/lang/String;IZ)V

    return-void
.end method
