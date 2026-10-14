.class public interface abstract annotation La3/f;
.super Ljava/lang/Object;
.source "Metadata.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation La3/f;
        bv = {
            0x1,
            0x0,
            0x3
        }
        d1 = {}
        d2 = {}
        k = 0x1
        mv = {}
        pn = ""
        xi = 0x0
        xs = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation
