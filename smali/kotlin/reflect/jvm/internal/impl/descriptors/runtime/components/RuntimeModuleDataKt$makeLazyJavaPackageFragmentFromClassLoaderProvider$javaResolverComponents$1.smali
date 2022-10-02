.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleDataKt$makeLazyJavaPackageFragmentFromClassLoaderProvider$javaResolverComponents$1;
.super Ljava/lang/Object;
.source "RuntimeModuleData.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaModuleAnnotationsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotationsForModuleOwnerOfClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
